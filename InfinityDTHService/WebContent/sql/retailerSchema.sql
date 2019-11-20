CREATE TABLE retailerSchema (
	retailerID varchar(20),
	pwd		varchar(20),
	firstName 	varchar(20),
	lastName 	varchar(20),
	contact1 	varchar(15),
	contact2 	varchar(15),
	emailID 	varchar(20),
	address1 	varchar(30),
	address2 	varchar(30),
	city 		varchar(10),
	state 		varchar(10),
	zipcode 	int,
	stbLimit 	int,
	creditLimit 	decimal (8,2),
	commissionPercentage decimal(5,2),
	serviceCharges 	decimal (8, 2),
	inventoryList 	varchar(50),
	inventoryCost	decimal(8,2),
	retailerCreationDate	date,
	customerCount	int,

	primary key(emailID)
	
);

