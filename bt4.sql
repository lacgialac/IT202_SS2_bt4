drop database if exists ss2_bt4;
create database ss2_bt4;
use ss2_bt4;

create table users (
    userid int primary key auto_increment,
    username varchar(100),
    phone int
);

alter table users add phone_new varchar(15);

update users
set phone_new = cast(phone as char);

alter table users drop column phone;

alter table users change phone_new phone varchar(15);