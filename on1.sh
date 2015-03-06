while true; do
	read -p "To change content press 'a' to add 'r'to remove 'x' to exit:" k
	case $k in 
	a)		sh /naveen/nav/cond.sh; break ;;

	r)              sh /naveen/nav/on2.sh; break ;;
#		echo -n "Enter the menu nos(eg:3.dir=3):"
#	        read nos
#	        echo $nos > ddd
#		read
#		cat /naveen/nav/menu.txt | head | cut -d '.' -f1 >id 
#	        while true; do
#			f=$(cat ddd | head | cut -d '.' -f1)
#			wcnt=$(grep $f id | wc -l )
#			if [ "$wcnt" -gt 0] ; then
#				echo "Menu id or number not found and kindly enter menu number properly"
#			else	
#				sed /$nos/d  /naveen/nav/menu.txt > /naveen/nav/menu.txt.new
#				mv/naveen/nav/menu.txt.new /naveen/nav/menu.txt
#				rm /naveen/nav/name/$nos.sh
#				exit 0
##			fi      
#		 done ;;
	x) exit;;
	* ) echo "Kindly select either a or r or x" ;;
esac	
done

