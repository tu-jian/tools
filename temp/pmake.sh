make |& while read -e logline
do
	logline=`echo  "${logline}" | sed  's/[eE]rror/\\\\e[1;31;40mERROR\\\\e[0m/g'`
	echo -e "${logline}"
done
