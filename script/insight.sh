#!/bin/bash

. ./function_libs.sh

function bulid_insight()
{
	INSIGHT=insight-6.8a

	if [ ! -f ${INSIGHT}.tar.bz2 ] ; then
		echo_info "Downloading lib ${INSIGHT}"
		wget  ftp://sourceware.org/pub/insight/releases/${INSIGHT}.tar.bz2
	fi

	rm -rf ${INSIGHT}
	tar -jxf ${INSIGHT}.tar.bz2

	cd insight-6.8
	echo_info "Configuring lib ${INSIGHT}"

	./configure --target=arm-none-linux-gnueabi --disable-werror

	echo_info "Building lib ${INSIGHT}"
	make

	echo_info "Installing lib ${INSIGHT}"
	make install
	cd -
}

bulid_insight
