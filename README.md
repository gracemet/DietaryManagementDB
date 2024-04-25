# DietaryManagementDB

Our project seeks to provide a database that tracks the dietary needs and restrictions of patients in a hospital, and also tracks the inventory of food and what is compatible with the patients.The project aims to create an intuitive design for managing nutrition related dietary needs through the use of a SQL database. The database would include information related but not limited to patient allergies, recommended menu options, ingredients in specific meals, and any other relevant information concerning the meals they receive when under hospital care in order to maximize the quality of service that can be provided.

To run the local database website you must complete the following:

1. Install XAMPP and MySQL Workbench from the following sites:

    https://www.apachefriends.org/

    https://www.mysql.com/products/workbench/

2. After setting up both apps, open both programs.

3. Upon opening XAMPP, you should see a window labeled "XAMPP Control Panel". In that window, you should see two Modules labeled Apache and MySQL. Press the start buttons to the right of those Modules.

4. Then, using MySQL Workbench, under MySQL Connections, press the Local instance button. Execute DietSchema.sql, DietLoad.sql, Login.sql in that order.

5. From there, copy the entire github DietaryManagementDB folder to the following location in your C drive:

    C:\xampp\htdocs\

6. In your Chrome browser, simply enter the following into the address bar:
    
    http://localhost/DietaryManagementDB/DietaryManagement/index.php
    
    If the page is not showing up, check to make sure you have copied the folder properly to your htdocs folder. You should have not just the folder's contents but also the folder itself.

7. If all the steps were completed successfully, you should see the webpage's home page.

    On the main page there is a dropdown that let's you select from the different patients in the database. Upon selection, you can view that patient's diet, allergies, full name, and potential meals and        add-ons that should account for availability of the menu items as well as their diet and allergies.

   
    Under the Menu page, you can see the different meal options already prepared, their quantities in the hospital's inventory, as well as an order button for each of them. When you press the "Order!" button, the page automatically updates the information in the table and the quantity decreases.

    The Login page let's you sign in with the following username and password:

   **Username:** JohnDoe **Password:** abc
   
   If you log in, you'll be greeted with a form that lets you add a patient, their diet, as well as their allergies. If you press and hold <kbd>Ctrl</kbd> you can select multiple allergies.


