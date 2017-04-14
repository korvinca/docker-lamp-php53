#!/bin/bash
mail=mail
user=admin@example.com

echo "===== Statistic host =====" >> ~/tmp/stat.txt
date >> ~/tmp/stat.txt
echo "===== File system stat =====" >> ~/tmp/stat.txt
df -h >> ~/tmp/stat.txt 
echo "===== PHP files change stat =====" >> ~/tmp/stat.txt
find /var/www -name "*.php*" -mtime -1 >> ~/tmp/stat.txt
echo "===== HTML files change stat =====" >> ~/tmp/stat.txt
find /var/www -name "*.html" -mtime -1 >> ~/tmp/stat.txt
echo "===== Close =====" >> ~/tmp/stat.txt
cat ~/tmp/stat.txt | $mail -s "Daly hosting stat from Server" $user
rm ~/tmp/stat.txt
