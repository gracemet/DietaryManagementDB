USE DIET_MANAGEMENT;

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Bryce", "A", "Hall", 1);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Chandler", "A", "McCook", 2);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Mathhew", "Z", "Wooten", 3);

INSERT INTO PATIENT(Fname, Minit, Lname, P_id) VALUES
("Grace", "A", "Metri", 4);

INSERT INTO INGREDIENT(Ing_id, Ing_name) VALUES
(1, "Peanut");

INSERT INTO INGREDIENT(Ing_id, Ing_name) VALUES
(2, "Banana");

INSERT INTO INGREDIENT(Ing_id, Ing_name) VALUES
(3, "Meat");


INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 1);

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 2);

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 3);

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(2, 1);

INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(4, 3);