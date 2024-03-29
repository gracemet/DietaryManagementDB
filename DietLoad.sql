USE DIET_MANAGEMENT;

# PATIENT
INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Bryce", "A", "Hall", 1);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Chandler", "A", "McCook", 2);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Matthew", "Z", "Wooten", 3);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Grace", "A", "Metri", 4);



# INGREDIENT
INSERT INTO INGREDIENT(Ing_id) VALUES ("Salt"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Sliced Ham"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("White Bread"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Cheese"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Turkey"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Tomato"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Onion"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Kidney Bean"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Garlic"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Chili Powder"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Paprika"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Oregano");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Cayenne Pepper"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Cumin"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Black Pepper"); 
INSERT INTO INGREDIENT(Ing_id) VALUES ("Beef");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Worcestershire Sauce");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Hamburger Bun");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Lettuce");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Cucumber");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Red Onion");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Olive");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Green Bell Pepper");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Feta Cheese");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Olive Oil");
INSERT INTO INGREDIENT(Ing_id) VALUES ("Red Wine Vinegar");
INSERT INTO INGREDIENT(Ing_id) VALUES ('Canola Oil');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Celery');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Thyme');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Bay Leaf');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Red Wine');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Beef Broth');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Potato');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Parsnip');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Carrot');
INSERT INTO INGREDIENT(Ing_id) VALUES ('Parsley');

# ADDON 
INSERT INTO ADDON (A_id, A_type) VALUES ("Mustard", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Ketchup", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Mayonnaise", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Soda", "Drink");
INSERT INTO ADDON (A_id, A_type) VALUES ("Cheese", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Salt", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Pepper", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Hot Sauce", "Condiment");
INSERT INTO ADDON (A_id, A_type) VALUES ("Water", "Drink");
INSERT INTO ADDON (A_id, A_type) VALUES ("Lemonade", "Drink");
INSERT INTO ADDON (A_id, A_type) VALUES ("Sweet Tea", "Drink");
INSERT INTO ADDON (A_id, A_type) VALUES ("Unsweet Tea", "Drink");

# DIET


# FOOD
INSERT INTO FOOD (F_id, Prepared) VALUES
("Ham sandwich", true);
INSERT INTO FOOD (F_id, Prepared) VALUES
("Turkey Chili", true);
INSERT INTO FOOD (F_id, Prepared) VALUES
("Cheeseburger", false);
INSERT INTO FOOD (F_id, Prepared) VALUES
("Greek Salad", true);
INSERT INTO FOOD (F_id, Prepared) VALUES
("Pot Roast", false);



# ASSOCIATIVE TABLES

# FI 
# TURKEY CHILI
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Turkey");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Chili Powder");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Tomato");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Onion");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Kidney Bean");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Garlic");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Paprika");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Oregano");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Cumin");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Cayenne Pepper");
# HAM SANDWICH
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "White Bread");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "Sliced Ham");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "Cheese");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "Tomato");

# CHEESEBURGER
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Hamburger Bun");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Beef");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Worcestershire Sauce");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Salt");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Garlic");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Black Pepper");

# GREEK SALAD
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Tomato");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Cucumber");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Red Onion");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Olive");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Green Bell Pepper");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Feta Cheese");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Olive Oil");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Red Wine Vinegar");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Salt");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Oregano");

# Pot Roast
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Beef");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Black Pepper");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Salt");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Canola Oil");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Onion");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Celery");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Garlic");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Tomato");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Thyme");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Bay Leaf");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Red Wine");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Beef Broth");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Potato");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Parsnip");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Carrot");
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Pot Roast", "Parsley");


# PI
# Mathhew
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Tomato");
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Oregano");
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Kidney Bean");

# Chandler
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(2, "Tomato");

# Grace 
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(4, "Chili Powder");



