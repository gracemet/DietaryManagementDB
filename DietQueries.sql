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

SELECT Fname, Ing_id FROM PATIENT p, INGREDIENT i, PATIENT_INGREDIENT
WHERE (p.P_id = PATIENT_INGREDIENT.PI_Pid 
AND i.Ing_id = PATIENT_INGREDIENT.PI_Ingid);

# Show what foods have what ingredients
SELECT FI_Fid Food_Name, FI_Ingid Ingredient FROM FOOD_INGREDIENT
ORDER BY Food_Name, Ingredient;

# Show what meals are available to a patient considering their diet and their allergies
-- SELECT Fname, Minit, Lname, FOOD_NAME FROM PATIENT p
-- JOIN FOOD f ON F_id NOT IN
-- (SELECT  

SELECT DF_Fid FROM DIET_FOOD WHERE DF_Dname = "Low Sodium";
# Shows what food items are available to a patient depending on their diet.
SELECT F_id FROM FOOD WHERE  (Prepared>1) AND F_id = ANY (SELECT DF_Fid FROM DIET_FOOD WHERE DF_Dname = "Low Sodium")
AND NOT F_id = ANY (SELECT FI_Fid FoodName FROM FOOD_INGREDIENT WHERE FI_Ingid = ANY (SELECT PI_Ingid FROM PATIENT_INGREDIENT WHERE PI_Pid = "2"));

SELECT Fname, Ing_id FROM PATIENT p, INGREDIENT i, PATIENT_INGREDIENT
WHERE (p.P_id = PATIENT_INGREDIENT.PI_Pid 
AND i.Ing_id = PATIENT_INGREDIENT.PI_Ingid);


