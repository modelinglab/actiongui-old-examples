/*
enum Role {
    RESIDENT        :0
    DIRECTOR        :1
    ADMINISTRATION  :2
    SYSTEM          :3
}
*/



INSERT INTO Residence (pk, name, zone,lang) VALUES (1,'Allenmoos','Europe/Zurich', 'en');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (1, '', '' , 'scl1', '111', 1, 1);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (2, '', '' , 'adm1', '111', 2, 1);
insert into Residence_users__User_residence(Residence_users,User_residence) values (1,1),(1,2);


INSERT INTO Residence (pk, name, zone,lang) VALUES (2,'Schweidt','CET', 'de');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (3, '', '' , 'scl2', '111', 1, 2);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (4, '', '' , 'adm2', '111', 2, 2);
insert into Residence_users__User_residence(Residence_users,User_residence) values (2,3),(2,4);

INSERT INTO Residence (pk, name, zone,lang) VALUES (3,'Utopia','Europe/Madrid', 'es');
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (5, '', '' , 'scl', '111', 1, 3);
insert into mmeals.User (pk, name, surname, login, password, role, residence) values (6, '', '' , 'adm', '111', 2, 3);
insert into Residence_users__User_residence(Residence_users,User_residence) values (3,5),(3,6);



