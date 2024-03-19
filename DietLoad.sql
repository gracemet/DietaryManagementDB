USE DIET_MANAGEMENT;

# PATIENT
INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Bryce", "A", "Hall", 1);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Chandler", "A", "McCook", 2);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Mathhew", "Z", "Wooten", 3);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Grace", "A", "Metri", 4);



# INGREDIENT
INSERT INTO INGREDIENT(Ing_name) VALUES ("Salt"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Sliced Ham"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("White Bread"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Cheese"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Ground Turkey"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Tomato"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Onion"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Kidney Bean"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Garlic"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Chili Powder"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Paprika"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Oregano"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Cayenne Pepper"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Cumin"); 

INSERT INTO INGREDIENT(Ing_name) VALUES ("Black Pepper"); 

# FOOD
INSERT INTO FOOD (F_id, Prepared) VALUES
("Ham sandwich", true);

INSERT INTO FOOD (Food_Name, Prepared) VALUES
("Turkey Chili", true);

INSERT INTO FOOD (Food_Name, Prepared) VALUES
("Cheeseburger", false);

INSERT INTO FOOD (Food_Name, Prepared) VALUES
("Greek Salad", true);

INSERT INTO FOOD (Food_Name, Prepared) VALUES
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
(4, "Chili Pepper");



# FI 
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Ground Turkey");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Chili Pepper");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Turkey Chili", "Tomato");
