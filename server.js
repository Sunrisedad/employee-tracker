// DEPENDENCIES

const express = require('express');
const db = require('./db/connection');
const mysql = require('mysql2')
const inquirer = require('inquirer');
const cTable = require('console.table');
const app = express();
const PORT = process.env.PORT || 3008;


// MIDDLEWARE FOR EXPRESS

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// START SERVER

db.connect(err => {
  if (err) throw err;
  console.log('Database connected!');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
    start();
  });
});

start = () => {
  userChoices()
}

// PROMPT FOR CHOICES

const userChoices = () => {
  inquirer.prompt([
    {
      type: 'list',
      name: 'choices',
      message: 'What would you like to do?',
      choices: [
        'View all Departments',
        'View all Roles',
        'View all Employees',
        'Add a Department',
        'Add a Role',
        'Add an Employee',
        'Update an Employee role',
        'Quit'
      ]
    }
  ])
    .then((answers) => {
      switch (answers.choices) {
        case 'View all Departments':viewAllDepartments();
          break;
        case 'View all Roles':viewAllRoles();
          break;
        case 'View all Employees':viewAllEmployees();
          break;
        case 'Add a Department':addDeparment();
          break;
        case 'Add a Role':addRole();
          break;
        case 'Add an Employee':addEmployee();
          break;
        case 'Update an Employee Role':updateEmployee();
          break;
        case 'Quit':
          break;
      }

    });
};

