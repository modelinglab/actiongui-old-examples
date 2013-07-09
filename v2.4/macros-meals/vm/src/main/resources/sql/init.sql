insert into meals.Meal (pk,id,literal) values (1,1,'Breakfast'), (2,2,'Lunch'), (3,3,'Dinner');

insert into meals.MealOption (pk,id,meal,literal) values (1,1,1,'Nothing'), (2,2,1,'Early Breakfast'), (3,3,1,'Normal Breakfast'), (4,4,1,'Normal Breakfast'), (5,5,1,'Take Away Early Breakfast'), (6,6,1,'Take Away Early Breakfast');
insert into meals.MealOption (pk,id,meal,literal) values (7,7,2,'Nothing'), (8,8,2,'Normal Lunch'), (9,9,2,'Take Away Lunch');
insert into meals.MealOption (pk,id,meal,literal) values (10,10,3,'Nothing'), (11,11,3,'Normal Dinner'), (12,12,3,'Late Dinner');
insert into meals.MealOption_ownedBy__Meal_options (MealOption_ownedBy,Meal_options) values (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,2), (8,2), (9,2), (10,3), (11,3), (12,3);

insert into meals.MealOptionDeadline (pk,id,literal,type,cday,chour,cminute) values (1,1,'l1',0,0,8,1), (2,2,'l2',1,0,8,2), (3,3,'l3',2,0,8,3), (4,4,'l4',3,0,8,4), (5,5,'l5',4,0,8,5), (6,6,'l6',5,0,8,6), (7,7,'l7',6,0,8,7), (8,8,'l8',7,0,8,8), (9,9,'l9',0,0,8,9), (10,10,'l10',1,0,8,10), (11,11,'l11',2,0,8,11), (12,12,'l12',3,0,8,12);
insert into meals.MealOptionDeadline_mealOption__MealOption_deadlines (MealOptionDeadline_mealOption,MealOption_deadlines) values (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10), (11,11), (12,12);