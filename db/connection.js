const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'Stella9!',
        database: 'employees'
    },
    console.log('Connected to employee database!')
);

module.exports = db;