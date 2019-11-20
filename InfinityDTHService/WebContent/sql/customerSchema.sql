CREATE TABLE customerSchema (
  firstName 	varchar(20),
  lastName 	varchar(20),
  pwd		varchar(20),
  emailId 	varchar(40),
  phoneNumber 	varchar(15),
  address1 	varchar(20),
  address2 	varchar(20),
  landmark 	varchar(20),
  zipCode 	smallint,
  city 		varchar(15),
  state 	varchar(2),
  cusCreation 	date,
  operatorName 	varchar(50),
  retailerName 	varchar(50),
  flag 		smallint,
  balancePayments decimal(8, 2),
  primary key (emailID)
);

drop table customerSchema;

insert into customerSchema (emailId, pwd, flag) values('sid@gmail.com', '12345', 0);

delete from customerSchema where emailid = 'sid@gmail.com';

select * from customerSchema;

select role from roleSchema;