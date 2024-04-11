USE DIET_MANAGEMENT;

# DIET
INSERT INTO DIET (Diet_name) VALUES ('Bariatric');
INSERT INTO DIET (Diet_name) VALUES ('Low Sodium');
INSERT INTO DIET (Diet_name) VALUES ('Vegetarian');
INSERT INTO DIET (Diet_name) VALUES ('Renal');
INSERT INTO DIET (Diet_name) VALUES ('Cardiac');
INSERT INTO DIET (Diet_name) VALUES ('Normal');


# PATIENT
INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(1, 'Bryce', 'B', 'Hall', 'Bariatric');

INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(2, 'Chandler', 'A', 'McCook', 'Low Sodium');

INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(3, 'Matthew', 'D', 'Wooten', 'Vegetarian');

INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(4, 'Grace', 'N', 'Metri', 'Renal');

INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(5, 'Peter', 'B', 'Parker', 'Cardiac');

INSERT INTO PATIENT(P_id, Fname, Minit, Lname, Diet) VALUES
(6, 'Tom', 'M', 'Riddle', 'Normal');



# INGREDIENT
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Banana', '7');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Bay Leaf', '3');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Beef', '2');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Beef Broth', '9');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Black Bean', '40');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Black Pepper', '100');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Canola Oil', '11');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Carrot', '13');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Cayenne Pepper', '7');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Celery', '5');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Cheese', '24');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Chili Powder', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Cucumber', '4');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Cumin', '7');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Egg', '20');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Feta Cheese', '2');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Garlic', '8');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Green Bean', '13');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Green Bell Pepper', '15');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Greek Yogurt', '9');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Hamburger Bun', '5');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Honey', '14');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Kidney Bean', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Lettuce', '8');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Milk', '15');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Olive', '7');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Olive Oil', '19');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Onion', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Oregano', '7');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Paprika', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Parsley', '1');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Parsnip', '6');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Pasta', '6');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Peanut Butter', '12');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Potato', '16');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Protein Powder', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Red Onion', '12');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Red Wine', '18');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Red Wine Vinegar', '8');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Salt', '200');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Sliced Ham', '10');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Spinach', '12');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Thyme', '14');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Tomato', '20');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Turkey', '15');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Vegetable Broth', '11');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('White Bread', '50');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Worcestershire Sauce', '1');
INSERT INTO INGREDIENT(Ing_id, In_Stock) VALUES ('Zucchini', '20');

# ADDON 
INSERT INTO ADDON (A_id, A_type) VALUES ('Mustard', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Ketchup', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Mayonnaise', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Soda', 'Drink');
INSERT INTO ADDON (A_id, A_type) VALUES ('Cheese', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Salt', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Black Pepper', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Hot Sauce', 'Condiment');
INSERT INTO ADDON (A_id, A_type) VALUES ('Water', 'Drink');
INSERT INTO ADDON (A_id, A_type) VALUES ('Lemonade', 'Drink');
INSERT INTO ADDON (A_id, A_type) VALUES ('Sweet Tea', 'Drink');
INSERT INTO ADDON (A_id, A_type) VALUES ('Unsweet Tea', 'Drink');
INSERT INTO ADDON (A_id, A_type) VALUES ('Toast', 'Side');
INSERT INTO ADDON (A_id, A_type) VALUES ('Fruit', 'Side');
INSERT INTO ADDON (A_id, A_type) VALUES ('Coffee', 'Drink');


# FOOD
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Ham Sandwich', true, 8);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Turkey Chili', false, 0);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Cheeseburger', true, 7);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Black Bean Burger', true, 5);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Greek Salad', true, 11);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Pot Roast', false, 5);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Scrambled Eggs', false, 10);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Protein Shake', false, 10);
INSERT INTO FOOD (F_id, Customizable, Prepared) VALUES
('Minestrone Soup', false, 10);


# ASSOCIATIVE TABLES

# FI 
# TURKEY CHILI
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Turkey');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Chili Powder');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Tomato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Onion');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Kidney Bean');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Garlic');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Paprika');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Oregano');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Cumin');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Turkey Chili', 'Cayenne Pepper');

# HAM SANDWICH
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Ham Sandwich', 'White Bread');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Ham Sandwich', 'Sliced Ham');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Ham Sandwich', 'Cheese');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Ham Sandwich', 'Tomato');

# CHEESEBURGER
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Hamburger Bun');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Beef');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Worcestershire Sauce');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Salt');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Garlic');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Black Pepper');

# BLACK BEAN BURGER
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Hamburger Bun');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Black Bean');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Worcestershire Sauce');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Garlic');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Cheeseburger', 'Black Pepper');

# GREEK SALAD
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Tomato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Cucumber');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Red Onion');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Olive');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Green Bell Pepper');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Feta Cheese');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Olive Oil');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Red Wine Vinegar');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Salt');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Greek Salad', 'Oregano');

# POT ROAST
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Beef');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Black Pepper');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Salt');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Canola Oil');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Onion');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Celery');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Garlic');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Tomato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Thyme');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Bay Leaf');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Red Wine');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Beef Broth');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Potato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Parsnip');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Carrot');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES
('Pot Roast', 'Parsley');

# SCRAMBLED EGGS
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES ('Scrambled Eggs', 'Egg');

# PROTEIN SHAKE
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Protein Powder');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Milk');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Banana');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Peanut Butter');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Greek Yogurt');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Protein Shake', 'Honey');

# MINESTRONE SOUP
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Olive Oil');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Onion');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Garlic');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Carrot');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Celery');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Potato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Zucchini');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Tomato');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Kidney Bean');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Green Bean');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Vegetable Broth');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Pasta');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Spinach');
INSERT INTO FOOD_INGREDIENT(FI_Fid, FI_Ingid) VALUES 
('Minestrone Soup', 'Parsley');


#DF
# BARIATRIC
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Bariatric', 'Protein Shake');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Bariatric', 'Minestrone Soup');

# LOW SODIUM
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Protein Shake');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Black Bean Burger');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Greek Salad');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Scrambled Eggs');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Protein Shake');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Low Sodium', 'Minestrone Soup');

# VEGETARIAN
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Vegetarian', 'Protein Shake');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Vegetarian', 'Greek Salad');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Vegetarian', 'Scrambled Eggs');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Vegetarian', 'Minestrone Soup');

# RENAL
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Greek Salad');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Turkey Chili');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Renal', 'Scrambled Eggs');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Pot Roast');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Renal', 'Minestrone Soup');
 
# CARDIAC
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Cardiac', 'Black Bean Burger');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Cardiac', 'Greek Salad');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Cardiac', 'Scrambled Eggs');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Cardiac', 'Minestrone Soup');

# NORMAL
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Ham Sandwich');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Turkey Chili');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Cheeseburger');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Black Bean Burger');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Greek Salad');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Pot Roast');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Scrambled Eggs');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Protein Shake');
INSERT INTO DIET_FOOD(DF_Dname, DF_Fid) VALUES
('Normal', 'Minestrone Soup');


#DA
# BARIATRIC
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Bariatric', 'Soda');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Bariatric', 'Sweet Tea');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Bariatric', 'Lemonade');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Bariatric', 'Mayonnaise');

# LOW SODIUM
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Low Sodium', 'Hot Sauce');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Low Sodium', 'Salt');

# VEGETARIAN HAS NO RESTRICTIONS

# RENAL
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Renal', 'Fruit');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Renal', 'Lemonade');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Renal', 'Toast');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Renal', 'Coffee');

# CARDIAC
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Cardiac', 'Salt');
INSERT INTO DIET_ADDON(DA_Dname, DA_Aid) VALUES
('Cardiac', 'Coffee');

# NORMAL HAS NO RESTRICTIONS

# PI
# Mathhew
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 'Tomato');
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 'Oregano');
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(3, 'Kidney Bean');

# Chandler
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(2, 'Tomato');

# Grace 
INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES
(4, 'Chili Powder');


# PA 
INSERT INTO PATIENT_ADDON(PA_Pid, PA_Aid) VALUES
(1, 'Hot Sauce');








