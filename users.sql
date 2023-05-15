#admin with all privileges
drop user if exists 'admin'@'localhost';
create user 'admin'@'localhost' identified by 'superpassword';
grant all privileges on mydb.*  to 'admin'@'localhost';

#owner with complete select privileges,restricted update and insert privileges
drop user if exists 'owner'@'localhost' ;
drop user if exists 'owner'@'%';

create user owner@'localhost' identified by 'ownerpassword';
create user owner@'%' identified by 'ownerpassword';
grant select on mydb.* to 'owner'@'localhost';
grant select on mydb.* to 'owner'@'%';
grant update,insert on mydb.κατάστημα to 'owner'@'localhost';
grant update,insert on mydb.κατάστημα to 'owner'@'%';
grant update,insert on mydb.προϊόν to 'owner'@'localhost';
grant update,insert on mydb.προϊόν to 'owner'@'%';

#customer with restricted select,update and insert privileges
drop user if exists 'customer'@'localhost' ;
drop user if exists 'customer'@'%';

create user customer@'localhost' identified by 'customerpassword';
create user customer@'%' identified by 'customerpassword';
grant select on mydb.πελάτης to 'customer'@'localhost';
grant select on mydb.πελάτης to 'customer'@'%';
grant update,insert on mydb.πελάτης to 'customer'@'localhost';
grant update,insert on mydb.πελάτης to 'customer'@'%';
grant update,insert on mydb.αξιολογεί_κατάστημα to 'customer'@'localhost';
grant update,insert on mydb.αξιολογεί_κατάστημα to 'customer'@'%';
grant update,insert on mydb.αξιολογεί_υπάλληλο to 'customer'@'localhost';
grant update,insert on mydb.αξιολογεί_υπάλληλο to 'customer'@'%';