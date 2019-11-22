CREATE TABLE customerSchema (
  firstName 	varchar(20),
  lastName 	varchar(20),
  pwd		varchar(20),
  emailId 	varchar(40),
  phoneNumber 	varchar(15),
  address1 	varchar(100),
  address2 	varchar(100),
  landmark 	varchar(100),
  zipCode 	smallint,
  city 		varchar(15),
  state 	varchar(15),
  cusCreation 	date,
  operatorName 	varchar(50),
  retailerName 	varchar(50),
  flag 		smallint,
  balancePayments decimal(8, 2),
  primary key (emailID)
);

drop table customerSchema;

insert into customerSchema (firstName, lastName, emailId, phoneNumber, address1, address2, landmark, zipCode, city, state, flag, pwd) 
values('Siddi Avinash', 'Chenmilla', 'chenmilla.siddiavinash@gmail.com', '6083352493',
'4309 L', 'jnk', 'piouhgf', 22030, 'FAIRFAX', 'Virginia', 0, 'changePwd');

insert into customerSchema (emailId, pwd, flag) values('sid@gmail.com', '12345', 0);

delete from customerSchema where emailid = 'chenmilla.siddiavinash@gmail.com';

select * from customerSchema;

select role from roleSchema;