const inquirer = require('inquirer');
const mysql = require('mysql2');
const express = require('express');
const consoleTable = require('console.table');

const PORT = process.env.PORT || 3001;

app.use(express.urlencoded({extend: false}));
app.use(express.json());

const db = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'rooter',
    database: 'employees',
});

const startDatabase = () => {
    inquirer.prompt ([
       {
           type: 'list',
           name: 'menu options',
           message: 'Please pick a menu option below',
           choices: [
               'View all departments',
               "View all roles",
               "View all employees",
           ]
       } 
    ]);
    switch (answer.options) {
         case 'View all departments':
            departments();
            break;

        case 'View all roles':
            roles();
            break;

        case 'View all employees':
            employees();
            break;

    };
};

const departments = () => {
    const sql = `SELECT * FROM departments`;
    db.query(sql, (err, rows) => {
        if (err) {
            res.status(505).json({ error: err.message});
            return;
        }
        console.log({
            message: 'This department',
            data: rows
        })
        prompt();
    })
};

const roles = () => {
    const sql = `SELECT * FROM role`;
    db.query(sql, (err, rows) => {
        if (err) {
            res.status(505).json({ error: err.message});
            return;
        }
        console.log({
            message: 'This Role',
            data: rows
        })
        prompt();
    })
};

const employees = () => {
    const sql = `SELECT * FROM role`;
    db.query(sql, (err, rows) => {
        if (err) {
            res.status(505).json({ error: err.message});
            return;
        }
        console.log({
            message: 'This Employee',
            data: rows
        })
        prompt();
    })
};

app.listen(PORT, () => {
    console.log(`Server running off of port ${PORT}`);
});

prompt();