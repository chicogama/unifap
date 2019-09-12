CREATE DATABASE UNIFAP;

USE UNIFAP;

    CREATE TABLE usuario(
        id INT (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR (32) NOT NULL,
        endereco VARCHAR (60),
        cargo VARCHAR (60) NOT NULL  
    );