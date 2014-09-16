#!/bin/bash

function echo_info()
{
	#1 bold, 32 foreground green, 40 background black
	echo -e "\e[1;32;40m$1\e[0m"
}

function echo_warn()
{
	#1 bold, 33 foreground yellow, 40 background black
	echo -e "\e[1;33;40m$1\e[0m"
}

function echo_error()
{
	#1 bold, 31 foreground red, 40 background black
	echo -e "\e[1;31;40m$1\e[0m"
}
