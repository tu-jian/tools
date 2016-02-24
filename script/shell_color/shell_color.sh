#!/bin/bash

debug ()
{
#	echo "$1"
	return 0;
}

COLOR_RED=`echo -e "\033[0;31m"`
COLOR_GREEN=`echo -e "\033[0;32m"`
COLOR_YELLOW=`echo -e "\033[0;33m"`
COLOR_BLUE=`echo -e "\033[0;34m"`
COLOR_CLEAR=`echo -e "\033[0m"`

debug `which $0`
debug `dirname $0`

# get the directory of this script
color_shell_script_dir=`dirname $0`
debug "color_shell_script_dir:${color_shell_script_dir}"

# for debug, print the caller's current directory
debug "PWD:${PWD}"

# get cmd
cmd_name=$1
shift
cmd_args="$*"

debug "cmd_name:${cmd_name}"
debug "cmd_args:${cmd_args}"

exec_original_cmd="${cmd_name} ${cmd_args}"

if test -x "${color_shell_script_dir}/cmd_${cmd_name}_config.sh" ; then
	cmd_config="${color_shell_script_dir}/cmd_${cmd_name}_config.sh"
else
	echo "Config file: cmd_${cmd_name}_config.sh is not exist."
	echo "Using default config file: cmd_default_config.sh."
	cmd_config="${color_shell_script_dir}/cmd_default_config.sh"

	if [ ! -x ${cmd_config} ] ; then
		echo "Error: file ${cmd_config} is not exist."
		exit 1
	fi
fi

debug "cmd_config:  ${cmd_config}"
source ${cmd_config}

debug "exceptions: ${exceptions[*]}"
debug "keyword_color_pair: ${keyword_color_pair[*]}"

match_exception=0
if test ${#exceptions[*]} -ne 0 ; then
# if ${cmd_args} contains any string in array exceptions[*],
# do no extra actions in color_shell.sh, just execute original cmd.
	for ex in ${exceptions[*]}
	do
		# regular expression compare, do not use "".
		if [[ ${cmd_args} == *${ex}* ]] ; then
			debug "exception:${ex} match."
			match_exception=1
			break;
		else
			debug "exception:${ex} not match."
		fi
	done
fi

if [ $[match_exception] -eq 1 ] ; then
	${exec_original_cmd}
	exit 0
fi

array_size_keyword_color_pair=${#keyword_color_pair[*]}
if [ ${array_size_keyword_color_pair} -eq 0 -o $((array_size_keyword_color_pair%2)) -ne 0 ]; then
	echo "Config file error. array keyword_color_pair[] is null or not pair.."
	exit 1
fi

color=""
convert_color ()
{
	local c=$1
	case ${c} in
	red)
	color=${COLOR_RED}
	;;
	yellow)
	color=${COLOR_YELLOW}
	;;
	green)
	color=${COLOR_GREEN}
	;;
	blue)
	color=${COLOR_BLUE}
	;;
	*)
	echo "Unsupported color option: ${c}."
	exit 1
	;;
	esac
}

sed_str=""
i=0
while [ ${i} -lt ${array_size_keyword_color_pair} ]
do
	debug $i
	keyword=${keyword_color_pair[${i}]}
	i=$((i+1))
	debug $i
	color=${keyword_color_pair[${i}]}
	i=$((i+1))

	debug "${keyword} ${color}"

	convert_color ${color}
	sed_str="${sed_str} -e 's/${keyword}/${color}&${COLOR_CLEAR}/'"
done

debug "sed_str: ${sed_str}"
${exec_original_cmd} 2>&1 | eval sed ${sed_str}
