#user input
while getopts a:b:c:d opt
do
	case "$opt" in
		a)echo "Option is there with parameter" $OPTARG;;
		b)echo "Option is there with parameter" $OPTARG;;
		c)echo "Option is there with parameter" $OPTARG;;
		*)echo "Option not found";;
	esac
done

