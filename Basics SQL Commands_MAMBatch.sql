create database newbatch; -- we are using create database to create database

use newbatch;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from users;

insert into users( username, email) values( 'kanth', 'kanth@bepec.com'), ('data', 'data@bepec.in');

select * from users;

insert into users( username, email) values( 'kanth', 'kanth1@bepec.com'), ('data', 'data1@bepec.in');

create table posts (post_id INT AUTO_INCREMENT PRIMARY KEY, user_id INT NOT NULL,
title varchar(100) not null,
content text not null,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
foreign key(user_id) references users(user_id));

select * from posts;


