if [ $# -eq 1 ]; then
   if [ -s $1  ]; then
    line=`cat $1`
    for i in $line; do
      if [ $i -ge 0 -a $i -le 2 ]; then
        echo "Still in Mama's arms"
      elif [ $i -ge 3 -a $i -le 4 ]; then
        echo "Preschool Maniac"
      elif [ $i -ge 5 -a $i -le 11 ]; then
        echo "Elementary school"
      elif [ $i -ge 12 -a $i -le 14 ]; then
        echo "Middle school"
      elif [ $i -ge 15 -a $i -le 18 ]; then
        echo "High school"
      elif [ $i -ge 19 -a $i -le 22 ]; then
        echo "College"
      elif [ $i -ge 23 -a $i -le 65 ]; then
        echo "Working for the man"
      elif [ $i -ge 66 -a $i -le 100 ]; then
        echo "The Golden Years"
      elif [  $i -lt 0 -a $i -gt 100]; then
        echo "This program is for humans"
      fi
    done
   fi
fi
