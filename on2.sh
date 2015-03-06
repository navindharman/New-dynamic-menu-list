#!/bin/bash
ed=$(cat /naveen/nav/menu.txt | head | cut -d '.' -f1) > g
cat /naveen/nav/menu.txt | head | cut -d '.' -f1 > g
echo -n "Enter the menu nos(eg:3.dir=3):"
read nos
echo $nos > iii
read
h=$( cat iii | head | cut -d '.' -f1) > jjj
wcnt1=$(grep -w $h g | wc -l )
      if [ "$wcnt1" -gt 0 ] ; then
#	awk  '!/$nos/' /naveen/nav/menu.txt > /naveen/nav/menu.txt.new
	sed  $nos"d"  /naveen/nav/menu.txt > /naveen/nav/menu.txt.new 
	mv /naveen/nav/menu.txt.new /naveen/nav/menu.txt
        rm /naveen/nav/$nos.sh
        
      else
	      echo "Menu id not found"
fi
exit

