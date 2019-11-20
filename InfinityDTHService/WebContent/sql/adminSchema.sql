CREATE TABLE adminSchema (
  emailId varchar(40),
  pwd	varchar(20),
  flag smallint,
  primary key (emailID)
);

drop table adminSchema;

insert into adminSchema values('admin@gmail.com','admin',0);

