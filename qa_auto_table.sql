CREATE SCHEMA QAauto;	
CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    carBrandId INT NOT NULL,
    carModelId INT NOT NULL,
    mileage INT,
    initialMilleage INT,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);