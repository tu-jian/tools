#!/bin/bash

#Please check networking is well before running this script.

# This is used to set develop env in ubuntu 12.04.
# It includes develop tools.

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

########################################################################
# Develop tools list:u-boot-tools qemu qemu-system qemu-utils skyeye git
package_install u-boot-tools
package_install qemu
package_install qemu-system
package_install qemu-utils
package_install skyeye
package_install automake


package_install git
echo_warn "Git need to be configured ...\n"
