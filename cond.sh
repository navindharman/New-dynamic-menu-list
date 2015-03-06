#!/bin/bash
con=$(cat /naveen/nav/menu.txt | head | cut -d '.' -f1) >> d
cat /naveen/nav/menu.txt | head | cut -d '.' -f1 > d
echo -n "Kindly add item in following format menuid.menuname:"
read word
echo $word > fff
read
e=$( cat fff | head | cut -d '.' -f1)
echo $e > eee
#cat fff | head | cut -d '.' -f1 > e
wcnt=$(grep -w $e d | wc -l )
	if [ "$wcnt" -gt 0 ] ; then
		echo "menu found"
	else	
	sed "$ a\ $word" /naveen/nav/menu.txt > /naveen/nav/menu.txt.new
	mv /naveen/nav/menu.txt.new /naveen/nav/menu.txt
	echo -n "Add script to execute:"
	var=$(cat menu.txt | tail -n1 | cut -d '.' -f1)
	sh /naveen/nav/variable.sh > var
	read
	cd /naveen/nav/
	vi $var.sh
	#!/bin/bash
	sed "$ i\ $script" /naveen/nav/$var.sh
	mv /naveen/nav/$var /naveen/nav/$var.sh
	chmod +x /naveen/nav/$var.sh
	echo "Menu list modified"
fi

