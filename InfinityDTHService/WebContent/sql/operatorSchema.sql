CREATE TABLE operatorSchema
(
	firstName	varchar(20),
	lastName	varchar(20),
	emailID		varchar(40),
	pwd		varchar(20),
	phoneNumber	varchar(15),
	startTime	time,
	endTime		time,
	maxCustomers	smallint,
	opCreation	date,
	flag		smallint,
	primary key(emailID)
);