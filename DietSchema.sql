DROP DATABASE DIET_MANAGEMENT;

CREATE DATABASE DIET_MANAGEMENT;
USE DIET_MANAGEMENT;

# Main tabels

CREATE TABLE PATIENT
(
	P_id		INT NOT NULL AUTO_INCREMENT,
	Fname		VARCHAR(15)	NOT NULL,
	Minit		CHAR,
	Lname		VARCHAR(15)	NOT NULL,
    PRIMARY KEY (P_id)
);

CREATE TABLE INGREDIENT
(
	Ing_id		INT NOT NULL AUTO_INCREMENT,
    Ing_name	CHAR(20),
    In_Stock	BOOLEAN,
    PRIMARY KEY (Ing_id)
);

CREATE TABLE FOOD
(
	F_id			INT NOT NULL AUTO_INCREMENT,
	Food_Name		CHAR(20),
    Prepared		BOOLEAN,
	PRIMARY KEY (F_id)
);

CREATE TABLE ADDON
(
	A_id		INT NOT NULL AUTO_INCREMENT,
    Addon_name	VARCHAR(20),
    PRIMARY KEY (A_id)
);

CREATE TABLE DIET
(
	D_id		INT NOT NULL AUTO_INCREMENT,
    Diet_name	VARCHAR(20),
    PRIMARY KEY (D_id)
);

# Associative Tables

CREATE TABLE PATIENT_INGREDIENT
(
	PI_Pid		INT,
    PI_Ingid	INT,
	FOREIGN KEY(PI_Pid) REFERENCES PATIENT(P_id),
    FOREIGN KEY(PI_Ingid) REFERENCES INGREDIENT(Ing_id)
);

CREATE TABLE FOOD_INGREDIENT
(
	FI_Fid		INT,
    FI_Ingid	INT,
	FOREIGN KEY(FI_Fid) REFERENCES FOOD(F_id),
    FOREIGN KEY(FI_Ingid) REFERENCES INGREDIENT(Ing_id)
);

CREATE TABLE PATIENT_ADDON
(
	PC_Pid		INT,
    PC_Aid		INT,
	FOREIGN KEY(PC_Pid) REFERENCES PATIENT(P_id),
    FOREIGN KEY(PC_Aid) REFERENCES ADDON(A_id)
);

CREATE TABLE PATIENT_DIET
(
	PD_Pid		INT,
    PD_Did		INT,
	FOREIGN KEY(PD_Pid) REFERENCES PATIENT(P_id),
    FOREIGN KEY(PD_Did) REFERENCES DIET(D_id)
);

CREATE TABLE DIET_FOOD
(
	DF_Did		INT,
    DF_Fid		INT,
	FOREIGN KEY(DF_Did) REFERENCES DIET(D_id),
    FOREIGN KEY(DF_Fid) REFERENCES FOOD(F_id)
);

CREATE TABLE DIET_ADDON
(
	DA_Did		INT,
    DA_Aid		INT,
	FOREIGN KEY(DA_Did) REFERENCES DIET(D_id),
    FOREIGN KEY(DA_Aid) REFERENCES ADDON(A_id)
);