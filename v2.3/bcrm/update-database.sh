
MYSQL=mysql
DB_USER=root
DB_PASS=actiongui
DB_SCHEMA=$(basename $(pwd))

${MYSQL} -u$DB_USER -p$DB_PASS -e "DROP DATABASE IF EXISTS ${DB_SCHEMA};"
${MYSQL} -u$DB_USER -p$DB_PASS < vm/target/db.sql
${MYSQL} -u$DB_USER -p$DB_PASS $DB_SCHEMA < vm/src/main/resources/sql/init.sql


