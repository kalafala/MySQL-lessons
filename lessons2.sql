# Credit: https://www.youtube.com/watch?v=L0N7UsYDz_Q

drop database mytest;
create database mytest;
use mytest;
show tables;
create table mytable(id int(11) unsigned auto_increment primary key not null, username varchar(25) not null, passwd varchar(25) not null, email varchar(25) not null);
describe mytable;
insert into mytable(username, passwd, email) values('user1', 'passwd1', 'email1@domain.com');
insert into mytable(username, passwd, email) values('user2', 'passwd2', 'email2@domain.com');
insert into mytable(username, passwd, email) values('user3', 'passwd3', 'email3@domain.com');
insert into mytable(username, passwd, email) values('user4', 'passwd4', 'email4@domain.com');
select * from mytable;

create table mytable2(id int(11) unsigned auto_increment primary key not null, username varchar(25) not null, passwd varchar(25) not null, petname varchar(25) not null);
insert into mytable2(username, passwd, petname) values('user1', 'passwd1', 'pet1');
insert into mytable2(username, passwd, petname) values('user2', 'passwd2', 'pet2');
insert into mytable2(username, passwd, petname) values('user3', 'passwd3', 'pet3');
insert into mytable2(username, passwd, petname) values('user44', 'passwd4', 'pet4');
select * from mytable2;

select * from mytable cross join mytable2;  # cross-product (cartesian product) of mytable and mytable2
select * from mytable left join mytable2 on mytable.username=mytable2.username; # Left-join, keep all entries in mytable
select * from mytable right join mytable2 on mytable.username=mytable2.username; # Right-join, keep all entries in mytable2
select * from mytable inner join mytable2 on mytable.username=mytable2.username; # inner-join, keep only entries where user-name matches

select * from mytable inner join mytable2 on mytable.username=mytable2.username where mytable2.petname in ('pet2','pet3'); # inner-join, keep only entries where user-name matches
