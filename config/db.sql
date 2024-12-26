-- Active: 1734599193516@@127.0.0.1@3306@taskflow
CREATE DATABASE TaskFlow ;
USE TaskFlow ;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    username VARCHAR(50) NOT NULL,     
    email VARCHAR(100) NOT NULL,        
    password VARCHAR(255) NOT NULL,     
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
INSERT INTO users (username, password)
VALUES ('jihane','Bnti1512');


CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,   
    description VARCHAR(255) NOT NULL,   
    date DATE,                      
    status ENUM('à faire', 'en cours', 'terminée') DEFAULT 'à faire', 
    type ENUM('bug', 'feature') NOT NULL,
    user_id INT NOT NULL,                         
    FOREIGN KEY (user_id) REFERENCES users(id)  
);