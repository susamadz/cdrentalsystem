create tcustomer(cust_id char(9) not null,
date_of_membership date, 
cust_fname char(15) not null,
cust_mname char(15),
cust_lname char(15) not null,
cust_address char(25),
cust_phone text,
cust_email char (12),
primary key(cust_id),
unique(fname,lname));

create tcd(cd_id char(9) not null,
date_of_membership date, 
cd_title char(10) not null,
cd_genre char(10),
cd_year_release int,
cd_rent_rate money not null,
primary key(cd_id));

create tcd_rent(rent_id char(9) not null,
date_rented date not null,
date_due date not null,
date_return date,
primary key(rent_id),
foreign key (cust_id)references tcustomer (cust_id),
foreign key (cd_id)references tcd (cd_id));

create payment(transact_id char(9),
transact_date date,
transact_amount money,
primary key(transact_id),
foreign key (rent_id)references tcd_rent (rent_id));
