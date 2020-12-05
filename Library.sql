
create database library;
use library;
/* ------------------------TABLE FOR BOOKS -------------------------------- */

create table books (
bid int not null auto_increment primary key, 
title varchar(30) not null, 
author varchar(30), 
book_status varchar(30) not null,
book_rack varchar(30) not null,
available_copies int
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
--SELECT * FROM books;
SELECT distinct
title,
book_rack

FROM
books;

INSERT INTO books (
title,
author,
book_status,
book_rack,
available_copies
)

VALUES (
'ELEMENTS OF ENGINNERING',
'DB.RATNANI',
'AVAILABLE',
'sec-2.135.11',
10
),

(
'ELEMENTS OF Universe',
'Akshay Mahajan',
'AVAILABLE',
'sec-2.135.12',
20
),

(
'ELEMENTS OF PHYSICS',
'DB.PRABHU',
'AVAILABLE',
'sec-2.135.13',
15
);

/* ------------------------TABLE FOR ADMINS -------------------------------- */

create table admins(
admin_name varchar(20) not null,
admin_id varchar(100) primary key not null,
admin_pwd varchar(20) not null,
admin_emailid varchar(100) not null
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO admins(
admin_name,
admin_id,
admin_pwd,
admin_emailid
)

Values(
'dhruv shah',
'17bec097',
'dhruv2000',
'17bec097@nirmauni.ac.in' 
),

(
'sahil tulsiani',
'17bec093',
'sahil2000',
'17bec093@nirmauni.ac.in' 
);

SELECT distinct
admin_name,
admin_id,
admin_pwd,
admin_emailid

FROM 
admins;



/* ------------------------TABLE FOR USERS -------------------------------- */



create table users(
user_name varchar(20) not null,
user_id varchar(100) primary key not null,
user_pwd varchar(20) not null,
user_emailid varchar(100) not null
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO users(
user_name,
user_id,
user_pwd,
user_emailid
)

Values(
'jainam shah',
'17bec099',
'jainam2000',
'17bec099@nirmauni.ac.in' 
),

(
'sameer kanth',
'17bec094',
'sameer2000',
'17bec094@nirmauni.ac.in' 
);

SELECT distinct
user_name,
user_id,
user_pwd,
user_emailid

FROM 
users;



/* ------------------------TABLE FOR BOOK ISSUE -------------------------------- */


create table books_issued(
  issue_id int(11) NOT NULL primary key,
  bid int NOT NULL auto_increment,
  admin_id varchar(100) not null,
  user_id varchar(100) not null,
  issue_date varchar(30) NOT NULL,
  return_date varchar(30) NOT NULL,
  user_emailid varchar(100) not null
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

SELECT distinct
issue_id

from books_issued;
