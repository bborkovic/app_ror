#!/bin/bash

echo "Exporting data"
# except rails internal tables
mysqldump -u ${RAILS_USER} -p${RAILS_USER} \
	--no-create-info app_ror_dev \
	--ignore-table=app_ror_dev.ar_internal_metadata \
	--ignore-table=app_ror_dev.schema_migrations \
	> app_ror_dev.data.sql


