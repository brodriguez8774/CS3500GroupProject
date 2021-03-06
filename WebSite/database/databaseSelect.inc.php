
<?php
    # Statements to load appropriate tables from database.

    # Load baked_good and all related food tables.
    $sqlSelectBake = "SELECT DISTINCT *
                      FROM baked_good;";

    $sqlSelectBakeIng = "SELECT DISTINCT *
                      FROM ingredient, baked_good
                      WHERE ingredient.bake_id = baked_good.bake_id;";


    # Load coffee and all related food tables.
    $sqlSelectCoffee = "SELECT DISTINCT *
                        FROM coffee;";

    $sqlSelectCoffeeIng = "SELECT DISTINCT *
                        FROM ingredient, coffee
                        WHERE ingredient.coffee_id = coffee.coffee_id;";


    # Load tea and all related food tables.
    $sqlSelectTea = "SELECT DISTINCT *
                     FROM tea;";

    $sqlSelectTeaIng = "SELECT DISTINCT *
                     FROM ingredient, tea
                     WHERE ingredient.tea_id = tea.tea_id;";


    # Load store data from store table.
    $sqlSelectStore = "SELECT DISTINCT *
                       FROM address, store
                       WHERE address.addr_id = store.addr_id;";


    # Load customer all related person tables.
    $sqlSelectCustomer = "SELECT DISTINCT *
                          FROM address, store, customer
                          WHERE store.store_id = customer.store_id AND
                          address.addr_id = customer.addr_id;";


    # Load employee all related person tables.
    $sqlSelectEmployee = "SELECT DISTINCT *
                          FROM address, store, employee
                          WHERE store.store_id = employee.store_id AND
                          address.addr_id = employee.addr_id;";

?>
