Create table CDW_SAPP_D_CUSTOMER(
CUST_ID   Number(10) primary key NOT NULL,
CUST_F_NAME Varchar2(40) NOT NULL,
CUST_M_NAME Varchar2(40),
CUST_L_NAME Varchar2(40),
CUST_SSN  Number(9) NOT NULL,
CUST_STREET  Varchar2(38),
CUST_CITY  Varchar2(30) NOT NULL,
CUST_STATE  Varchar2(30),
CUST_COUNTRY Varchar2(30),
CUST_ZIP NUMBER(7),
CUST_PHONE Varchar2(12),
CUST_EMAIL  Varchar2(40)
);

select * from CDW_SAPP_D_CUSTOMER;
truncate table CDW_SAPP_D_CUSTOMER;

update CDW_SAPP_D_CUSTOMER
set CUST_M_NAME ='Bichkar'
where Cust_id=1;
commit;


Create table CDW_SAPP_D_VENDORS(
VENDOR_KEY Number(10) primary key NOT NULL,
Vendor_ID   Number(10) NOT NULL,
Vendor_NAME Varchar2(40) NOT NULL,
VENDOR_SSN  Number(9) NOT NULL,
Vendor_streetname  Varchar2(40),
Vendor_CITY  Varchar2(20) NOT NULL,
Vendor_STATE  Varchar2(20),
Vendor_COUNTRY Varchar2(20),
Vendor_ZIP NUMBER(7),
Vendor_Phone Varchar2(12),
Vendor_EMAIL  Varchar2(30),
EFF_START_DATE date,
EFF_END_DATE date
);

select * from CDW_SAPP_D_VENDORS;
truncate table CDW_SAPP_D_VENDORS;

update CDW_SAPP_D_VENDORS
set VENDOR_NAME = 'Sanket'
where VENDOR_ID=2;

delete CDW_SAPP_D_VENDORS
where VENDOR_ID>2;

commit;


Create table CDW_SAPP_D_Geography(
Geography_ID   Number(10) primary key NOT NULL,
Geography_NAME Varchar2(40) NOT NULL
);

select * from CDW_SAPP_D_Geography;
truncate table CDW_SAPP_D_Geography;



Create table CDW_SAPP_D_PART(
Part_ID   Number(10) primary key NOT NULL,
part_NAME Varchar2(40) NOT NULL,
No_of_part number(10) NOT NULL,
price number(10)  NOT NULL
);

select * from CDW_SAPP_D_PART;
truncate table CDW_SAPP_D_PART;


Create table CDW_SAPP_D_Vendor_parts(
VENDOR_PARTS_KEY Number(10) primary key NOT NULL,
Vendor_ID   Number(10) NOT NULL,
Vendor_Ssn Number(9)NOT NULL,
Part_ID   Number(10) ,
part_NAME Varchar2(40) NOT NULL,
EFF_START_DATE date,
EFF_END_DATE date
);

select * from CDW_SAPP_D_Vendor_parts;
truncate table CDW_SAPP_D_Vendor_parts;

update CDW_SAPP_D_Vendor_parts
set VENDOR_SSN=875652543
where VENDOR_ID=1;

commit;


Create table CDW_SAPP_F_PART_SALE_FACT(
CUST_ID   Number(10) NOT NULL,
CUST_SSN  Number(9) NOT NULL,
Vendor_ID   Number(10) not null,
Vendor_NAME Varchar2(40) NOT NULL,
VENDOR_SSN  Number(9) NOT NULL,
Geography_ID   Number(10)  NOT NULL,
Geography_NAME Varchar2(40) NOT NULL,
Part_ID   Number(10)  NOT NULL,
part_NAME Varchar2(40) NOT NULL,
No_of_part number(10) NOT NULL,
price number(10)  NOT NULL,
TOTAL_PRICE number(20)
);

select * from CDW_SAPP_F_PART_SALE_FACT;
truncate table CDW_SAPP_F_PART_SALE_FACT;

commit;