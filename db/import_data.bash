#!/bin/bash

echo "Truncating all tables"

# truncate all tables in databases before insert
mysql -u ${RAILS_USER} -Nse 'show tables' app_ror_dev | \
	grep -v "ar_internal_metadata" | \
	grep -v "schema_migrations" | \
	while read table
do 
	echo "Truncate table ${table}" 
	mysql  -u ${RAILS_USER} \
	   -e "truncate table ${table}" app_ror_dev
done



# import just data to tables;

echo "Importing database app_ror_dev"
mysql -u ${RAILS_USER} app_ror_dev < app_ror_dev.data.sql 




