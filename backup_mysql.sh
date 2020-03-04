#!/bin/sh
DB_USER=
DB_PASS=""
DB_HOST=""
DB_PORT=""

BIN_DIR="/bin/"      
BCK_DIR="/data1/users/back/data" 
DATE=$(date +%Y%m%d%H%M%S)

DB_LIST=("db1" "db2")


for DB_NAME in ${DB_LIST[@]}
do
    $BIN_DIR/mysqldump --opt -u$DB_USER -p$DB_PASS -h$DB_HOST -P$DB_PORT $DB_NAME > $BCK_DIR/db_${DB_NAME}_$DATE.sql
done
