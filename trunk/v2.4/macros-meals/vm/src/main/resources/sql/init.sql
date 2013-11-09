/*
enum Role {
    RESIDENT        :0
    DIRECTOR        :1
    ADMINISTRATION  :2
    SYSTEM          :3
}
*/

INSERT INTO Residence (pk, name, zone) VALUES (1,'Utopia','Europe/Madrid');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (1, 'Manuel', 'Clavel', 'mgc', '111', 0, 1);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (2, '', '' , 'scl', '111', 1, 1);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (3, '', '' , 'adm', '111', 2, 1);
insert into Residence_users__User_residence(Residence_users,User_residence) values (1,1),(1,2),(1,3);


insert into mmeals.Meal (pk,literal,position, residence) values (1,'Breakfast',1, 1), (2,'Lunch',2, 1), (3, 'Dinner',3, 1);
insert into Meal_residence__Residence_meals (Meal_residence,Residence_meals) values (1,1),(2,1),(3,1);


INSERT INTO Residence (pk, name, zone) VALUES (2,'Allenmoos','Europe/Zurich');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (4, '', '' , 'scl1', '111', 1, 2);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (5, '', '' , 'adm1', '111', 2, 2);
insert into Residence_users__User_residence(Residence_users,User_residence) values (2,4),(2,5);


INSERT INTO Residence (pk, name, zone) VALUES (3,'Schweidt','CET');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (6, '', '' , 'scl2', '111', 1, 3);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (7, '', '' , 'adm2', '111', 2, 3);
insert into Residence_users__User_residence(Residence_users,User_residence) values (3,6),(3,7);




