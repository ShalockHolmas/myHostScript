#!/bin/bash
USER="root"
PASSWORD=""
DATABASE="blog"
WEBMASTER="felix_gu@outlook.com"

BACKUP_DIR="/data/"
DATE=`date +%Y%m%d`
DUMPFILE=$DATE.sql

OPTIONS="-u$USER -p$PASSWORD --opt --extended-insert=false --triggers --routines --hex-blob $DATABASE"

cd $BACKUP_DIR

mysqldump $OPTIONS > $DUMPFILE

#if [[ $? == 0 ]]; then
#echo "succ";
#mail -s "Database:$DATABASE Daily Backup" $WEBMASTER
