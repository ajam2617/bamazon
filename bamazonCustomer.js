//adding dependencies
var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require('cli-table');

//configure connection with local host
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "password",
    database: "bamazonDB"
});

connection.connect(function (err) {
    if (err) throw err;
});

//grab a list of all items by creating new Table function expression
//will need a for loop to push table info to new Table visible in command line
//ask the user what they would like to do
function preview() {
    connection.query("SELECT * FROM products", function (err, res) {
        var table = new Table({
            chars: {
                'top': '═', 'top-mid': '╤', 'top-left': '╔', 'top-right': '╗'
                , 'bottom': '═', 'bottom-mid': '╧', 'bottom-left': '╚', 'bottom-right': '╝'
                , 'left': '║', 'left-mid': '╟', 'mid': '─', 'mid-mid': '┼'
                , 'right': '║', 'right-mid': '╢', 'middle': '│'
            },
            head: ["Item ID", "Product", "Department", "Price", "Stock"],
            colWidths: [6, 30, 12, 15, 8]
        });
        for (var i = 0; i < res.length; i++) {
            table.push(
                [res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
            );
        }
        console.log(table.toString());
        manageItems(res);

    });
};

//restart function
function restart() {
    inquirer.prompt([{
        type: "list",
        name: "continue",
        choices: ["Yes", "No"],
        message: "Would you like to shop some more?\n"
    }]).then(function (answers) {

        if (answers.continue === "Yes") {
            manageItems();

        } else {
            exit()
        }

    });
};

//end function
function exit() {
    console.log("Thanks for shopping with bamazon!! Goodbye.")
    //This will exit out of our command line process
    connection.end()
}

//could inclue a switch case to handle the various functions
//Prompt user with ID of product they want to buy
//Second question is quantity
function manageItems(res) {
    inquirer.prompt([
        {
            type: "input",
            name: "userItem",
            message: "What is the ID of the item you would like to purchase?",

        },
        {
            type: "input",
            name: "userQuantity",
            message: "How many items would you like?"
        }
    ]).then(function (answers) {
        //check against inventory numbers and either complete their order, or tell them it's not available/quantity insufficient
        connection.query("SELECT * FROM products", function (err, res) {
            if (err) throw err;
            var userChoiceId = parseInt(answers.userItem);
            var userHowMany = parseInt(answers.userQuantity);
            var currentInventory;
            var updatedInventory;
            var itemPrice;
            for (var i = 0; i < res.length; i++) {
                if (userChoiceId === res[i].item_id) {
                    currentInventory = res[i].stock_quantity;
                    itemPrice = res[i].price;
                }
                if ((currentInventory - userHowMany) >= 0) {
                    var updatedInventory = currentInventory - userHowMany;
                    connection.query('UPDATE products SET ? WHERE item_id = ?', [{ stock_quantity: updatedInventory }, userChoiceId]);
                    console.log("The Item costs: " + itemPrice + ". " + "Our Inventory is now updating.");
                } else {
                    console.log("Insufficient Quantity")
                    restart();
                }
            }
        }
        )


    })
}

preview();




