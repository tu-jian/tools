#!/bin/bash

# Please check networking is well before running this script.

# This is used to set generic env in ubuntu 12.04.
# It includes gerenic applications, libs and services.

#config options
CONFIG_USERNAME=$USER

. ./function_libs.sh

########################### funtions ###################################
function package_install()
{
	local package=$1
	echo_info "Starting to install package: ${package}"
	sudo apt-get install -y ${package}

	if [ $? -eq 0 ] ; then
		echo_info "Install package ${package}                 [OK]"
	else
		echo_error "Install package ${package}                [ERROR]"
		#exit 1
	fi
}

function package_uninstall()
{
	local package=$1
	echo_info "Starting to uninstall package: ${package}"
	sudo apt-get purge ${package}

	if [ $? -eq 0 ] ; then
		echo_info "Uninstall package ${package}                 [OK]"
	else
		echo_error "Uninstall package ${package}                [ERROR]"
		#exit 1
	fi
}

function check_service_status()
{
	local serv="$1"

	if [ "${serv}" = "tftp" ] ; then
		## TODO  Why??
		sudo netstat -a | grep "${serv}"
	else
		sudo netstat -tlp | grep "${serv}"
	fi

	if [ $? -eq 0 ] ; then
		echo_info "Start service ${serv}                      [OK]"
	else
		echo_error "Start service ${serv}                     [ERROR]"
		exit 1
	fi
}

function config_ssh()
{
	package_install openssh-server
	#sudo ufw allow 22
	sudo service ssh restart
	check_service_status ssh
}

# function config_samba has one parameter: Linux username
# samba info:
# username and password are the same, that is Linux username passed from caller.
# shared directory is /home/$username
function config_samba()
{
	local username="$1"
	local temp_file=/tmp/samba.$$
	local config_file="/etc/samba/smb.conf"

	package_install samba

	#echo password(the same as username) to temp file
	echo "${username}" >> ${temp_file}
	echo "${username}" >> ${temp_file}

	sudo smbpasswd -s -a ${username} < ${temp_file}
	rm -f ${temp_file}

	sudo chmod 666 ${config_file}
	grep -n "^\[${username}\]" ${config_file} > /dev/null 2>&1
	if [ $? -ne 0 ] ; then
		echo_info "add samba configs for user ${username}"
		echo_info "username: ${username}"
		echo_info "password: ${username}"

		sudo echo "[${username}]" >> ${config_file}
		sudo echo "   comment = ${username}" >> ${config_file}
		sudo echo "   path = /home/${username}" >> ${config_file}
		sudo echo "   browseable = yes" >> ${config_file}
		sudo echo "   writable = yes" >> ${config_file}
	fi

	grep -n "map archive = no" ${config_file} > /dev/null 2>&1
	if [ $? -ne 0 ] ; then
		local num=`sed -n "/########## Domains ###########/=" ${config_file}`
		sudo sed -i "${num} a\    map archive = no" ${config_file}
	fi

	sudo service smbd restart
	check_service_status smb
}

function config_nfs()
{
	local dir="$1"

	sudo mkdir -p ${dir} > /dev/null 2>&1
	sudo chmod 777 ${dir}

	package_install nfs-kernel-server

	echo_info "configuring nfs ..."
	sudo chmod 666 /etc/exports
	grep -n "^${dir}" /etc/exports > /dev/null 2>&1
	if [ $? -ne 0 ] ; then
		sudo echo "${dir} *(rw,sync,no_root_squash)" >> /etc/exports
	fi
	sudo service nfs-kernel-server restart
	check_service_status nfs
}

function config_tftp()
{
	local dir="$1"
	local temp_file=/tmp/tftp.$$

	sudo mkdir -p ${dir} > /dev/null 2>&1
	sudo chmod 777 ${dir}

	package_install tftp-hpa
	package_install tftpd-hpa

	sudo chmod 666 /etc/default/tftpd-hpa

	#transrate. ex: /home/tujian/server to \/home\/tujian\/server
	echo ${dir} > ${temp_file}
	sed -i 's/\//\\\//g' ${temp_file}
	dir=`cat ${temp_file}`

	sudo sed -i "s/^TFTP_DIRECTORY.*/TFTP_DIRECTORY=\"${dir}\""/ "/etc/default/tftpd-hpa"
	sudo sed -i "s/^TFTP_OPTIONS.*/TFTP_OPTIONS=\"-l -c -s\""/ "/etc/default/tftpd-hpa"
	rm -f ${temp_file}

	#sudo ufw allow 69
	sudo service tftpd-hpa restart
	check_service_status tftp
}

########################################################################
# Applications list: vim dos2unix
package_install vim
package_install dos2unix

########################################################################
# Libs common for 32/64bit system: libncurses5-dev
# Libs only for 64bit system: ia32-libs

#Check system bit width 32 or 64
system_bit_width=`getconf LONG_BIT`
echo_info "system bit width: ${system_bit_width}"

if [ ${system_bit_width} -eq 64 ] ; then
	# ia32-libs: if you want to run 32bit app in 64bit system, this lib is necessary.
	package_install ia32-libs
fi

# libncurses5-dev: Do not install this lib, make menuconfig in linux kernel will fail.
package_install libncurses5-dev


########################################################################
# Services: ssh samba nfs tftp
config_ssh
config_nfs "/home/${CONFIG_USERNAME}/server"
config_tftp "/home/${CONFIG_USERNAME}/server"
config_samba ${CONFIG_USERNAME}
