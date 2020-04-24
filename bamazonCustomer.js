var mysql = require("mysql");
var inquirer = require("inquirer");
require("console.table");
require("dotenv");

var productId = [];

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "arr3steDdev!",
    // password: process.env.MYSQLPASS,
    database: "bamazon"
});

connection.connect(function (error) {
    if (error) {
        throw error;
    }

    displayMenuChoices();
});

function displayMenuChoices() {
    inquirer.prompt([
        {
            type: "list",
            name: "menu",
            message: "What would you like to do?",
            choices: [
                "Display all products",
                "Order items",
                "Exit application"
            ]
        }
    ]).then(function (userResponse) {
        switch (userResponse.menu) {
            case "Display all products":
                displayProducts();
                break;
            case "Order items":
                orderItems();
                break;
            case "Exit application":
                connection.end();
                process.exit(0);
            //0 means no error - 1 means error
        }
    })
};

function displayProducts() {
    connection.query("SELECT * FROM products", function (error, result) {
        if (error) {
            throw error;
        };

        for (let i = 0; i < result.length; i++) {
            productId.push(result[i].item_id);
        }

        console.table(result);
        displayMenuChoices();
    })
};


function orderItems() {
    inquirer.prompt([
        {
            type: "list",
            name: "productList",
            message: "Choose product Id for your desired item.",
            choices: productId
        },
        {
            type: "input",
            message: "Please enter quantity.",
            name: "quantity"
        }
    ]).then(function (userResponse) {
        connection.query("SELECT stock_quantity, price FROM products WHERE item_id = ?;", userResponse.productList, function (error, result) {
            if (error) {
                throw error;
            };

            console.log(result[0].stock_quantity, parseInt(userResponse.quantity));
            if (parseInt(userResponse.quantity) <= parseInt(result[0].stock_quantity)) {
                connection.query("UPDATE products SET stock_quantity = stock_quantity - ? WHERE item_id = ?;",
                    [parseInt(userResponse.quantity), userResponse.productList], function (error, result) {
                        if (error) {
                            throw error;
                        };

                        console.log("Order has been placed - you will receive your order in 5-10 eons!");
                    })
            } else {
                console.log("Out of stock!");
            }
            displayMenuChoices();
        })

    })
};

