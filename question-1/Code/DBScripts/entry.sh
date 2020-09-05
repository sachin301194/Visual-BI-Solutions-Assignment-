#!/bin/bash
sleep 15
scripts=("01-create-database.sql" "02-create-table.sql" "03-insert-data.sql")
for i in "${scripts[@]}"
do
	echo "Running scripts"
	/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "Test-123" -i /home/DBScripts/$i
done