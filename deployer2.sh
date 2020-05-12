#!/bin/bash
sudo mysql << My_Query
create database login;
# Création d’un utilisateur ayant tous les droits sur cette BD
Create user 'devops'@'%'  identified by 'devops';
Grant all privileges  on login.*  to  'devops'@'%';
FLUSH PRIVILEGES;
#Création  du table accounts
Use login;
CREATE TABLE IF NOT EXISTS accounts (
        id int(11) NOT NULL AUTO_INCREMENT,
        username varchar(50) NOT NULL,
        password varchar(255) NOT NULL,
        email varchar(100) NOT NULL,
        PRIMARY KEY (id) 
        ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
insert into accounts (id,username,password,email) values (1,'test','123456','test@test.com');
insert into accounts (id,username,password,email) values (2,'hamza','hamza','hamza@admsrv.com');
My_Query
echo 'Successful'
exit

