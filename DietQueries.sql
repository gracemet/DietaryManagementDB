USE DIET;

SELECT * FROM PATIENT;

SELECT * FROM INGREDIENT;

SELECT * FROM PATIENT_INGREDIENT;

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


SELECT FI_Fid Food_Name, FI_Ingid Ingredient FROM FOOD_INGREDIENT
ORDER BY Food_Name, Ingredient;

