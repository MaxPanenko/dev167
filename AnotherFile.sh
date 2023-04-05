#!/bin/bash
function MariaDb
{
COMMAND=`sudo mariadb`
	echo "${COMMAND}"
}

function ShowTables
{
SHOWTABLES=`SHOW TABLES`
	echo "${SHOWTABLES}"
}

#This commands let you connetc to mariaDB through Linux console
#And show tables which contain this DATABASE.

