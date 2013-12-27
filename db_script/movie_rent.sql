create table tcustomer(cust_id char(9) not null,
date_of_membership date, 
cust_fname char(15) not null,
cust_mname char(15),
cust_lname char(15) not null,
cust_address char(25),
cust_phone text,
cust_email char (12),
primary key(cust_id),
unique(cust_fname,cust_lname));

create table tcd(cd_id char(9) not null,
date_of_membership date, 
cd_title char(10) not null,
cd_genre char(10),
cd_year_release int,
cd_rent_rate money not null,
primary key(cd_id));

create table tcd_rent(rent_id char(9) not null,
cust_id char(9),
cd_id char(9),
date_rented date not null,
date_due date not null,
date_return date,
primary key(rent_id),
foreign key (cust_id)references tcustomer (cust_id),
foreign key (cd_id)references tcd (cd_id));

create table payment(transact_id char(9) not null,
rent_id char(9),
transact_date date not null,
transact_amount money not null,
primary key(transact_id),
foreign key (rent_id)references tcd_rent (rent_id));


create table actor (actor_id char(9) not null,
rent_id char(9),
actor_fname char(15) not null,
actor_lname char(15) not null,
actor_gender char (10),
primary key (actor_id),
foreign key (rent_id)references tcd_rent (rent_id),
unique(actor_fname,actor_lname));

create table cd_cast(cd_id char(9),
actor_id char(9),
primary key(cd_id, actor_id),
foreign key (cd_id)references tcd (cd_id),
foreign key (actor_id)references actor (actor_id));


