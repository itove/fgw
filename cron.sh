#!/bin/bash
# 5 5 * * * /home/al/w/itove/public/fgw/cron.sh

d=~/w/itove/public/fgw/sql/backup
cd $d

. ../../.env
date=$(date +%d)

if [ "$date" -eq 20 ]; then
	mysql -u$u -p$p -h $h fgw -e "update projects set alert=2"
fi

mysqldump --skip-extended-insert -u$user -p$pw -h $host $db > fgw.sql
git add .
git commit -m "mysqldump"
