#!/usr/bin/env python
import commands, os, sys
mydestm = "/home/username/backup/server/"
datetoday = commands.getoutput("/bin/date '+%Y%b%d'")
filereport = "/home/username/tmp/file_backup.txt"

# Remove backups older than 35 days
delarchive = "/usr/bin/find " + mydestm + " -type f  -mtime +90 -exec rm -rf {} \;"
os.system(delarchive)

#Copy DB
copylatestdb = "cp /home/username/backup/sql/" + "*" + datetoday + "* " + mydestm
os.system(copylatestdb)

#List and WWW
wwwlist = ['site1','site2']

#Arhive www folders
nwww = len(wwwlist)
i = 0
while i < nwww:
	wwwname = wwwlist[i]
	i = i + 1
	www_folder = "tar -czvf " + mydestm + datetoday + "-" + wwwname + ".tar.gz -C / var/www/" + wwwname
	os.system(www_folder)

#Arhive web-server
server_folder = "tar -czvf " + mydestm + datetoday + "-" + "web-server" + ".tar.gz -C / home/username/web-server"
os.system(server_folder)

#Delete old
chownkorvin = "find " + mydestm + "* -mtime +90 -exec rm -rf {} \;"
os.system(chownkorvin)
