USE DIET_MANAGEMENT;

SELECT * FROM PATIENT;
SELECT * FROM INGREDIENT;
SELECT * FROM FOOD;
SELECT * FROM DIET;
SELECT * FROM ADDON;
SELECT * FROM FOOD_INGREDIENT;

SELECT * FROM INGREDIENT WHERE IN_STOCK>0;

SELECT * FROM PATIENT_INGREDIENT;
SELECT * FROM FOOD_INGREDIENT;

# less efficient way to query using where
SELECT Fname, Ing_id FROM PATIENT p, INGREDIENT i, PATIENT_INGREDIENT pi
WHERE (p.P_id = pi.PI_Pid 
AND i.Ing_id = pi.PI_Ingid);

# more efficient way to query using join
SELECT Fname, Ing_id FROM PATIENT p 
INNER JOIN PATIENT_INGREDIENT pi ON p.P_id = pi.PI_Pid 
INNER JOIN INGREDIENT i ON i.Ing_id = pi.PI_Ingid
ORDER BY Fname;

# print a list of ingredients and people that are allergic to them
SELECT Ing_id Ingredient, COALESCE(Fname, 'No Allergies') Patients_Allergic FROM INGREDIENT i 
LEFT JOIN PATIENT_INGREDIENT pi ON i.Ing_id = pi.PI_Ingid
LEFT JOIN PATIENT p ON p.P_id = pi.PI_Pid;


# Show what foods have what ingredients
SELECT FI_Fid Food_Name, FI_Ingid Ingredient FROM FOOD_INGREDIENT
ORDER BY Food_Name, Ingredient;

# Show what meals are available to a patient considering their diet and their allergies
-- SELECT Fname, Minit, Lname, FOOD_NAME FROM PATIENT p
-- JOIN FOOD f ON F_id NOT IN
-- (SELECT  


# Shows what food items are available to a patient depending on their diet and allergies.
# First select stmnt gets all food ids that are prepared
SELECT F_id FROM FOOD WHERE  (Prepared>0) 
# AND it further filters any food ids that fit the diet
AND F_id = ANY (SELECT DF_Fid FROM DIET_FOOD WHERE DF_Dname = "Low Sodium") 
# As well as excluding any food ids that contain any food that contains any ingredients that patient is allergic to.
AND NOT F_id = ANY (SELECT FI_Fid FROM FOOD_INGREDIENT WHERE FI_Ingid = ANY (SELECT PI_Ingid FROM PATIENT_INGREDIENT WHERE PI_Pid = "2"));

# Shows what foods have what ingredients
SELECT FI_Ingid FROM FOOD_INGREDIENT WHERE FI_Fid = "Black Bean Burger";

# Removes 1 food item of that food.
UPDATE FOOD SET Prepared = Prepared-1 WHERE F_id = "Ham Sandwich";
SELECT F_id, Prepared FROM FOOD;

SELECT Fname FROM PATIENT ORDER BY Fname;

SELECT A_id FROM ADDON WHERE
A_id = ANY (SELECT DA_Aid FROM DIET_ADDON WHERE DA_Dname = "Bariatric");
