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

To run the script:
```bash
./duplicate_db.sh
```

The script will prompt you for your MySQL password (if not provided in the .env file), export the specified source database, create (and drop if it already exists) the test database, and then import the data into the test database.

## Security 

This script prompts for the database password to avoid storing sensitive information in the script or the .env file. Ensure your .env file is not tracked by version control systems (e.g., listed in .gitignore) to keep your credentials secure.

## Contributing

Contributions to improve the script or address issues are welcome. Please feel free to submit a pull request or open an issue in the repository.

## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
