sort 1.txt |awk -F: '{print $1}'|uniq >2.txt
for i in $(cat 2.txt)
do
 echo [$i]
 awk -va=$i -F: '$1==a {print $2}' 1.txt
done
