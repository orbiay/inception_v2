#!/bin/bash



service mysql start 


echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;" >> db1.sql
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root' ;" >> db1.sql
#echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql


#kill $(cat /var/run/mysqld/mysqld.pid)
service mysql stop
mysqld

