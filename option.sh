#!/bin/bash
 
while true; do
	read -p "Do you want to modify the menu list(y/n)?:" yn
	case $yn in
		[Yy]* ) 
	sh /naveen/nav/on1.sh; exit  ;;
#while true; do
#read -p "To add content in menu list press 'a' or to remove content from menu list press 'r':" k 
#if [ $k = a ]; then
#	con=$(cat menu.txt | head | cut -d '.' -f1)
#	echo -n "Add new item to menu list using following format(menuid.menu nameeg:3.dir):" 
#	read word
#	read
#	sed "$ a\ $word" /naveen/nav/menu.txt > /naveen/nav/menu.txt.new
#	mv /naveen/nav/menu.txt.new /naveen/nav/menu.txt
#	echo -n "Add script to execute:"
#	var=$(cat menu.txt | tail -n1 | cut -d '.' -f1) 
#	sh /naveen/nav/variable.sh > var
#	read
 #       cd name/	
#	vi $var.sh
#	#!/bin/bash
#	sed "$ i\ $script" /naveen/nav/name/$var.sh
#	mv /naveen/nav/$var /naveen/nav/name/$var.sh
#	chmod +x /naveen/nav/name/$var.sh
#	echo "Menu list modified"
#sh /naveen/nav/cond.sh 
#elif [ $k = r ]; then 
#	echo -n "enter the menu nos(eg:3.dir = 3):"
#	read nos
#	read
#	while true; do
#		sed /$nos/d  /naveen/nav/menu.txt > /naveen/nav/menu.txt.new
#		mv /naveen/nav/menu.txt.new /naveen/nav/menu.txt
#		rm /naveen/nav/name/$nos.sh
#		exit 0
#	done	
#else
#	echo "kindly select either a or r" ; 
#fi
#done

	 [Nn]* ) exit;;
	* ) echo "Please kindly answer yes or no." ;;
esac
done

	
