/*
enum Role {
    RESIDENT        :0
    DIRECTOR        :1
    ADMINISTRATION  :2
    SYSTEM          :3
}
*/

insert into mmeals.Residence (pk,name) values (1,'Allenmoos');

insert into mmeals.User (pk, name, surname, login, password, role) values (1, 'Manuel', 'Clavel', 'mgc', '111', 0);
insert into mmeals.User (pk, name, surname, login, password, role) values (2, '', '' , 'scl', '111', 1);
insert into mmeals.User (pk, name, surname, login, password, role) values (3, '', '' , 'adm', '111', 2);
insert into Residence_users__User_residence(Residence_users,User_residence) values (1,1),(1,2),(1,3);


insert into mmeals.Meal (pk,literal) values (1,'Breakfast'), (2,'Lunch'), (3, 'Dinner');
insert into Meal_residence__Residence_meals (Meal_residence,Residence_meals) values (1,1),(2,1),(3,1);


