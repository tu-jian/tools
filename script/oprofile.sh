#!/bin/bash

. ./function_libs.sh

INSTALL_PATH=/home/tujian/script/_install

function bulid_popt()
{
	POPT_OPROFILE=popt-1.16
	if [ ! -f ${POPT_OPROFILE}.tar.gz ] ; then
		echo_info "Downloading lib ${POPT_OPROFILE}"
		wget  http://anduin.linuxfromscratch.org/sources/BLFS/svn/p/${POPT_OPROFILE}.tar.gz
	fi

	rm -rf ${POPT_OPROFILE}
	tar -zxvf ${POPT_OPROFILE}.tar.gz

	cd ${POPT_OPROFILE}
	echo_info "Configuring lib ${POPT_OPROFILE}"
	./configure --prefix=${INSTALL_PATH} --host=arm-none-linux-gnueabi

	echo_info "Building lib ${POPT_OPROFILE}"
	make

	echo_info "Installing lib ${POPT_OPROFILE}"
	make install
	cd -
}

function build_binutils()
{
	PKG_BINUTILS=binutils-2.23
	if [ ! -f ${PKG_BINUTILS}.tar.gz ] ; then
		echo_info "Downloading lib ${PKG_BINUTILS}"
		wget  http://ftp.gnu.org/pub/gnu/binutils/${PKG_BINUTILS}.tar.gz
	fi

	rm -rf ${PKG_BINUTILS}
	tar -zxvf ${PKG_BINUTILS}.tar.gz

	cd ${PKG_BINUTILS}

	echo_info "Configuring lib ${PKG_BINUTILS}"
	./configure --prefix=${INSTALL_PATH} --host=arm-none-linux-gnueabi --with-extra-includes=${INSTALL_PATH}/include --with-extra-libs=${INSTALL_PATH}/lib

	echo_info "Building lib ${PKG_BINUTILS}"
	make

	echo_info "Installing lib ${PKG_BINUTILS}"
	make install

	cd -
}

function bulid_oprofile()
{
	PKG_OPROFILE=oprofile-0.9.9
	if [ ! -f ${PKG_OPROFILE}.tar.gz ] ; then
		echo_info "Downloading lib ${PKG_OPROFILE}"
		wget  http://downloads.sourceforge.net/project/oprofile/oprofile/oprofile-0.9.9/${PKG_OPROFILE}.tar.gz
	fi

	rm -rf ${PKG_OPROFILE}
	tar -zxvf ${PKG_OPROFILE}.tar.gz

	cd ${PKG_OPROFILE}

	echo_info "Configuring lib ${PKG_OPROFILE}"
	export PKG_CONFIG_PATH="$(INSTALL_PATH)/lib/pkgconfig"
	export CFLAGS="-I${INSTALL_PATH}/include"
	export CPPFLAGS="-I${INSTALL_PATH}/include"
	export LDFLAGS="-L${INSTALL_PATH}/lib"
	./configure --prefix=${INSTALL_PATH} --host=arm-none-linux-gnueabi --enable-gui=no

	echo_info "Building lib ${PKG_OPROFILE}"
	make

	echo_info "Installing lib ${PKG_OPROFILE}"
	make install

	cd -
}

bulid_popt
#build_binutils
bulid_oprofile