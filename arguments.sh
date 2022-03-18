while [ -n "$1" ]
do 
case "$1" in 
-b)
echo "$2 is branch"
shift
;;

-t)
echo "$2 is tag"
shift
;;

*)
echo "$1 is not recognised"
exit 1
;;	
esac
shift
done
