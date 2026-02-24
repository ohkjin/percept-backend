// Name of the PostgreSQL database to use:
const dbname = 'percept_db';
// Hostname (for TCP connections) or directory (for UNIX socket) of the database:
const dbhost = 'db';
// Name of the PostgreSQL database to use for 'npm test' testsuite purposes only:
const testdbname = 'percept_test';
// Hostname (for TCP connections) or directory (for UNIX socket) of the testing database:
const testdbhost = 'db';

// For protection against SQL injection
const dbuser = 'postgres';
const dbpass = 'password';
// END OF CONFIGURATION

// Export configuration (Make sure to export the new ones if the code uses them):
module.exports = {dbname, dbhost, dbuser, dbpass, testdbname, testdbhost};
