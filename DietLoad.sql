USE DIET_MANAGEMENT;

# PATIENT
INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Bryce", "B", "Hall", NULL);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Chandler", "A", "McCook", NULL);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Matthew", "D", "Wooten", NULL);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Grace", "N", "Metri", NULL);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Peter", "B", "Parker", NULL);



# INGREDIENT
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Salt", "200"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Sliced Ham", "10"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("White Bread", "50"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Cheese", "24"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Ground Turkey", "15"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Tomato", "20"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Onion", "10"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Kidney Bean", "10"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Garlic", "8"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Chili Powder", "10"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Paprika", "10"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Oregano", "7"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Cayenne Pepper", "7"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Cumin", "7"); 

INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ("Black Pepper", "7"); 

# FOOD
INSERT INTO FOOD (F_id, Prepared) VALUES
("Ham Sandwich", true);

INSERT INTO FOOD (F_id, Prepared) VALUES
("Turkey Chili", true);

INSERT INTO FOOD (F_id, Prepared) VALUES
("Cheeseburger", false);

INSERT INTO FOOD (F_id, Prepared) VALUES
("Greek Salad", true);

INSERT INTO FOOD (F_id, Prepared) VALUES
("Roast Beef", false);



# ASSOCIATIVE TABLES


# PI
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Tomato");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Oregano");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Kidney Bean");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(2, "Tomato");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(4, "Chili Powder");



# FI 
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Ground Turkey");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Chili Powder");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Tomato");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "Sliced Ham");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "White Bread");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham Sandwich", "Cheese");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Cheeseburger", "Cheese");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Tomato");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Onion");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Salt");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Greek Salad", "Oregano");






