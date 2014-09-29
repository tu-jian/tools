make > /tmp/makelog 2>&1
sed -i  's/error/\\\\e[1;31;40mERROR\\\\e[0m/g' /tmp/makelog

while read -e logline
do
	echo -e "${logline}"
done < /tmp/makelog

#cat /tmp/makelog | echo -e

