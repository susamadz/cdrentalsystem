create tcustomer(cust_id char(9),
date_of_membership date, 
cust_fname char(15) not null,
cust_mname char(15),
cust_lname char(15) not null,
cust_address char(25),
cust_phone text,
cust_email char (12),
primary key(cust_id),
unique(fname,lname));

create tcd(cd_id char(9),
date_of_membership date, 
cd_title char(10) not null,
cd_genre char(10),
cd_year_release int,
cd_rent_rate money,
primary key(cd_id));