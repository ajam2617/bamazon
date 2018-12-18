# :credit_card: bamazon :package: #

CLI app of Amazon-like storefront with the MySQL. The app will take in orders from customers and deplete stock from the store's inventory. As a bonus task, you can program your app to track product sales across your store's departments and then provide a summary of the highest-grossing departments in the store. Currently I have the _Customer_ version working, but intended to get the _Manager_ and maybe even the _Supervisor_ version working.

# How It Works :nut_and_bolt: #
![bamazon GIF](/images/bamazon.gif)

###Requirements###
To run this app, you must do so in your _command line_ or _terminal_. You must also do an _npm install_ of _mysql_, _inquirer_, and _cli-table_.

####Work-Flow ####
I started building the table of products first.
![mySQL Table](/images/mysql-products.JPG)

I used an npm cli-table to format my predefined products table. 
![cli-table](/images/cli-table-code.JPG)

I began to input the important information about the dependencies and local host connection. Next, I built functions to begin and end the program. I had some issue with this on a previous node application, so I was proud I got that working this time. 
![Restart and End Function](/images/restart-and-end.JPG)

I grabbed user-input as to the choice of the product, and then began to write theory on how to manage the inventory updates to my table. I did spend a lot of time trying to compare the user-input to match the items in my table. I had a wild for-loop that console logged everything and did take me some time to debug. It was a simple solution of moving my console logs out of the loop. I was proud that my inventory was working early on. I wish I had more time to build the mamnager verion also. I feel confident I could complete that portion. 
![Inventory theory](/images/inventory-code.JPG)

######To Do List ######

- [x] product table with colums names: item_id, product_name, department_name,  price, stock_quantity.
- [x] Display table with 10 products
- [x] node application for bamazonCustomer.js to display table
- [x] Prompt user with two questions (_id of item to buy_, and _quantity_ )
- [x] Grab user data and compare to inventory
- [x] Display message if no inventory
- [x] Fullfill order, if inventory allows, and track udpated inventory
- [ ] Continue to bamazonManager if time allows
- [ ] List menu options(_products_, _low inventory_, _add inventory_, _add new product_)
- [ ] Display all items to manager
- [ ] Display low inventory items to manager
- [ ] Display new products added
- [ ] Continue to Supervisor View if time allows
- [ ] create new table with department information
- [ ] Still display current inventory
- [ ] View sales by department (_profit_, _costs_, _sales_)



