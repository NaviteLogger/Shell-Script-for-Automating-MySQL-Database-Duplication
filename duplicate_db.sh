#!/bin/bash

# Configuration
SOURCE_DB="source_database_name"
TEST_DB="test_database_name"
DB_USER="your_username"
DB_PASS="your_password"

# Prompt for password to avoid storing it in the script
echo "Enter MySQL password for user $DB_USER:"
read -s DB_PASS

# Dump the source database (schema and data)
echo "Exporting source database..."
mysqldump -u $DB_USER -p$DB_PASS $SOURCE_DB > $SOURCE_DB.sql

# Create the test database
echo "Creating test database..."
mysql -u $DB_USER -p$DB_PASS -e "DROP DATABASE IF EXISTS $TEST_DB; CREATE DATABASE $TEST_DB;"

# Import the dump into the test database
echo "Importing into test database..."
mysql -u $DB_USER -p$DB_PASS $TEST_DB < $SOURCE_DB.sql

echo "Test database $TEST_DB created successfully."
