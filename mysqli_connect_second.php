<?php
// this mysqli_connect is for the database messaging_app220120 and the app of the same name.
/**********************************************************************************
MySQL COMMANDS USED BEFORE CONNECTING:
CREATE DATABASE messaging_app220120;
USE messaging_app220120;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, INDEX ON messaging_app220120 TO 'first'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON messaging_app220120.* TO 'second'@'localhost' IDENTIFIED BY '1234'; 
CREATE TABLE authentication(id INT UNSIGNED NOT NULL AUTO_INCREMENT, username VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id)) CHARACTER SET utf8;

(Yes, I know there's a problem with the first GRANT statement, it should have 'messaging_app220120.*' INSTEAD OF 'messaging_app220120')
***********************************************************************************/

$dbc_second = mysqli_connect('localhost', 'second', '1234', 'messaging_app220120');
mysqli_set_charset($dbc_second, 'utf8');