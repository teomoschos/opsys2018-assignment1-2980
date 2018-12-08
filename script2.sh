#Δεν μπορεσα να ολοκληρωσω το συγκεκριμενο σκελος της εργασιας.
#Aυτο που καταφερα να υλοποιησω ειναι να αποσυμπιεζω ενα συμπιεσμενο φακελο,
#ονοματι arxeia και στην συνεχεια με την χρηση της find να βρισκω μεσα σε αυτον
#τα αρχεια εγγραφου (αρχεια που ληγουν σε.txt).


filename=$1
if [ -f $filename ] ; then 
	tar -xvf $filename > /dev/null    
       find ./arxeia/  -name '*.txt' -exec cat {} \; > find.txt
       
  while read i ;
	  do
    
       r=$?
       t="$i"
       t=${t##*\//}
       t="${t////\\}" 
       
	  done <find.txt
fi
