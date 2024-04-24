# DietaryManagementDB

Our project seeks to provide a database that tracks the dietary needs and restrictions of patients in a hospital, and also tracks the inventory of food and what is compatible with the patients.The project aims to create an intuitive design for managing nutrition related dietary needs through the use of a SQL database. The database would include information related but not limited to patient allergies, recommended menu options, ingredients in specific diets, and any other relevant information concerning the meals they receive when under hospital care in order to maximize the quality of service that can be provided.

To run the local database website you must complete the following:

1. Install XAMPP and MySQL Workbench from the following sites:

    https://www.apachefriends.org/

    https://www.mysql.com/products/workbench/

2. After setting up both apps, open both programs.

3. Upon opening XAMPP, you should see a window labeled "XAMPP Control Panel". In that window, you should see two Modules labeled Apache and MySQL. Press the start buttons to the right of those Modules.

4. Then, using MySQL Workbench, under MySQL Connections, press the Local instance button. From there, execute DietSchema.sql, DietLoad.sql, Login.sql in that order.

5. From there, copy the folder to the following location in your C drive:

    C:\xampp\htdocs\

6. Then in your Chrome browser, simply enter the following into the address bar:
    
    http://localhost/HW6/index.php
    
    If the page is not showing up, check to make sure you have copied the folder properly to your htdocs folder. You should have not just the folder's contents but also the folder itself.

7. If all the steps were completed successfully, you should see a webpage labeled "Homework 6".

    From there, you can select info from the input dropboxes to insert new Shipping info to the Shipment table and hitting the Insert button. Or to increase the status of all the Suppliers, simply press the Increase Status +10% button. And to see a table of all the suppliers who ship a specific part, you can select a part from the rightmost dropbox and press Check to see.

    If a non-numeric value is inserted, the shipment won't be added to the table. And if valid info is inserted, a message should pop-up saying that it was successfully added.
