# Credit:  https://www.youtube.com/watch?v=FAXhXI2Gxdc

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
select username from mytable;
select * from mytable where id=2;
select * from mytable where username='user3'; # note use of single quotes
select * from mytable where id in (3,4);
select * from mytable order by id DESC;

update mytable set passwd='passwd44' where id=4;
update mytable set passwd='passwd11' where username='user1';
select * from mytable;

delete from mytable where username in ('user1','user2');
insert into mytable(username, passwd, email) values('user', 'passwd5', 'email5@domain.com');
insert into mytable(username, passwd, email) values('user', 'passwd6', 'email6@domain.com');
select * from mytable;

select distinct username from mytable; # distinct users
select distinct username,passwd from mytable; # distinct combinations of user/passwd
select max(id) from mytable;

# To delete a column: alter table mytable drop column email;
