# Shell-Script-for-Automating-Database-Duplication
The following script automates the creation of a test database by duplicating an existing database. It exports the schema (and optionally the data), creates a new test database, and imports the schema/data into the test database.

## Prerequisites

- MySQL Server: The script is designed for MySQL databases. Ensure you have MySQL server installed and accessible.
- `.env` File: Database credentials and other configurations are managed through a `.env` file in the project directory.

## Installation

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/database-duplication-script.git
cd database-duplication-script
```

Ensure the script file (duplicate_db.sh) is executable:
```bash
chmod +x duplicate_db.sh
```

## Configuration

Create a .env file in the root directory of this project with the following content, replacing the placeholders with your actual database credentials and names:
```dotenv
DB_USER=myuser
DB_PASS=mypassword
SOURCE_DB=mydatabase
TEST_DB=mytestdatabase
```

## Usage
