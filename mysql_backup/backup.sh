#!/bin/bash

# Database credentials
 user="root"
 password="rootpassword"
 host="webserver_mysql_1"
 databases="db_site1 db_site2"
 backup_path="/backup/sql"
 date=$(date +"%Y%b%d")

# Set default file permissions
# umask 111

# Dump database into SQL file
if [ ! -d $backup_path/$date ]; then
	mkdir $backup_path/$date
	for db in $databases; do
		echo "Dumping database: $db"
        	mysqldump --user=$user --password=$password --host=$host $db > $backup_path/$date/$db.sql
        	gzip -f $backup_path/$date/$db.sql
		rm -rf $backup_path/$date/$db.sql
	done
	chmod -R 755 $backup_path/$date
fi

# Delete files older than 30 days
find $backup_path/* -mtime +31 -exec rm -rf {} \;
