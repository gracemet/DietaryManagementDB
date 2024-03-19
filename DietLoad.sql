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
INSERT INTO INGREDIENT(Ing_id) VALUES
("Peanut");

INSERT INTO INGREDIENT(Ing_id) VALUES
("Banana");

INSERT INTO INGREDIENT(Ing_id) VALUES
("Meat");


# FOOD
INSERT INTO FOOD (F_id, Prepared) VALUES
("Ham sandwich", true);




# ASSOCIATIVE TABLES


# PI
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Peanut");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Banana");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, "Meat");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(2, "Peanut");

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(4, "Meat");



# FI 
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham sandwich", "Peanut");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham sandwich", "Banana");

INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
("Ham sandwich", "Meat");
