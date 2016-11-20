
<?php
    # Statements to load appropriate tables from database.

    # Load baked_good and all related food tables.
    $sqlSelectBake = "SELECT *
                      FROM ingredient, baked_good
                      WHERE ingredient.bake_id = baked_good.bake_id;";


    # Load coffee and all related food tables.
    $sqlSelectCoffee = "SELECT *
                        FROM ingredient, coffee
                        WHERE ingredient.coffee_id = coffee.coffee_id;";


    # Load tea and all related food tables.
    $sqlSelectTea = "SELECT *
                     FROM ingredient, tea
                     WHERE ingredient.tea_id = tea.tea_id;";


    # Load store data from store table.
    $sqlSelectStore = "SELECT *
                       FROM store;";


    # Load customer all related person tables.
    $sqlSelectCustomer = "SELECT *
                          FROM store, customer
                          WHERE store.store_id = customer.store_id;";


    # Load employee all related person tables.
    $sqlSelectEmployee = "SELECT *
                          FROM store, employee
                          WHERE store.store_id = employee.store_id;";

?>
