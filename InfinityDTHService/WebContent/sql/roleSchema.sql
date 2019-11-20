CREATE TABLE roleSchema
(
	emailID		varchar(40),
	role		char(1),
	primary key(emailID)
);

insert into roleSchema values('admin@gmail.com','a');
insert into roleSchema values('sid@gmail.com','c');
delete from customerSchema where emailid = 'sid@gmail.com';

