insert into Role (role) values ('Manager'),('SalesPerson');
insert into Employee (login,password) values ('alice', '1111');
insert into Employee (login,password) values ('bob', '1111');
insert into Employee (login,password) values ('charlie', '1111');
insert into Employee_roles__Role_users (Employee_roles, Role_users) values (1, 1);
insert into Employee_roles__Role_users (Employee_roles, Role_users) values (2, 2);
insert into Employee_roles__Role_users (Employee_roles, Role_users) values (3, 2);

