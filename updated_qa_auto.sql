CREATE SCHEMA `qaauto` ;
CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    carBrandId INT,
    carModelId INT,
    mileage INT,
    initialMileage INT,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

INSERT INTO car_brands (title) VALUES
    ('Toyota'),
    ('Honda'),
    ('Ford'),
    ('Chevrolet'),
    ('Nissan'),
    ('BMW'),
    ('Mercedes-Benz'),
    ('Audi'),
    ('Lexus'),
    ('Hyundai');

-- Toyota
INSERT INTO car_models (carBrandId, title) VALUES
    (1, 'Camry'),
    (1, 'Corolla'),
    (1, 'Rav4'),
    (1, 'Prius'),
    (1, 'Highlander'),
    (1, 'Tacoma'),
    (1, 'Sienna'),
    (1, '4Runner'),
    (1, 'Tundra'),
    (1, 'Avalon');

-- Honda
INSERT INTO car_models (carBrandId, title) VALUES
    (2, 'Civic'),
    (2, 'Accord'),
    (2, 'CR-V'),
    (2, 'Pilot'),
    (2, 'Odyssey'),
    (2, 'Fit'),
    (2, 'Ridgeline'),
    (2, 'Insight'),
    (2, 'HR-V'),
    (2, 'Passport');

-- Ford
INSERT INTO car_models (carBrandId, title) VALUES
    (3, 'F-150'),
    (3, 'Explorer'),
    (3, 'Mustang'),
    (3, 'Escape'),
    (3, 'Focus'),
    (3, 'Edge'),
    (3, 'Fusion'),
    (3, 'Ranger'),
    (3, 'Expedition'),
    (3, 'Bronco');

-- Chevrolet
INSERT INTO car_models (carBrandId, title) VALUES
    (4, 'Silverado'),
    (4, 'Camaro'),
    (4, 'Equinox'),
    (4, 'Tahoe'),
    (4, 'Traverse'),
    (4, 'Malibu'),
    (4, 'Impala'),
    (4, 'Blazer'),
    (4, 'Suburban'),
    (4, 'Corvette');
    
-- Nissan
INSERT INTO car_models (carBrandId, title) VALUES
    (5, 'Altima'),
    (5, 'Rogue'),
    (5, 'Sentra'),
    (5, 'Pathfinder'),
    (5, 'Maxima'),
    (5, 'Versa'),
    (5, 'Murano'),
    (5, 'Titan'),
    (5, 'Frontier'),
    (5, '370Z');

-- BMW
INSERT INTO car_models (carBrandId, title) VALUES
    (6, '3 Series'),
    (6, '5 Series'),
    (6, 'X3'),
    (6, 'X5'),
    (6, '7 Series'),
    (6, 'X1'),
    (6, 'X7'),
    (6, 'M3'),
    (6, 'i3'),
    (6, 'Z4');

-- Mercedes-Benz
INSERT INTO car_models (carBrandId, title) VALUES
    (7, 'C-Class'),
    (7, 'E-Class'),
    (7, 'S-Class'),
    (7, 'GLC'),
    (7, 'GLE'),
    (7, 'A-Class'),
    (7, 'G-Class'),
    (7, 'CLA'),
    (7, 'GLA'),
    (7, 'SL-Class');

-- Audi
INSERT INTO car_models (carBrandId, title) VALUES
    (8, 'A4'),
    (8, 'Q5'),
    (8, 'A3'),
    (8, 'Q7'),
    (8, 'A6'),
    (8, 'Q3'),
    (8, 'A5'),
    (8, 'TT'),
    (8, 'R8'),
    (8, 'SQ5');

-- Lexus
INSERT INTO car_models (carBrandId, title) VALUES
    (9, 'RX'),
    (9, 'ES'),
    (9, 'NX'),
    (9, 'IS'),
    (9, 'GX'),
    (9, 'LS'),
    (9, 'RC'),
    (9, 'UX'),
    (9, 'LC'),
    (9, 'LX');

-- Hyundai
INSERT INTO car_models (carBrandId, title) VALUES
    (10, 'Elantra'),
    (10, 'Tucson'),
    (10, 'Sonata'),
    (10, 'Santa Fe'),
    (10, 'Veloster'),
    (10, 'Kona'),
    (10, 'Palisade'),
    (10, 'Accent'),
    (10, 'Venue'),
    (10, 'Nexo');

INSERT INTO users (firstName, lastName, email, password) VALUES
    ('John', 'Doe', 'johndoe@example.com', 'password123'),
    ('Jane', 'Smith', 'janesmith@example.com', 'securepwd'),
    ('Mike', 'Johnson', 'mikejohnson@example.com', 'mypass123'),
    ('Emily', 'Brown', 'emilybrown@example.com', 'pass1234'),
    ('David', 'Wilson', 'davidwilson@example.com', 'davidpass'),
    ('Sarah', 'Martinez', 'sarahmartinez@example.com', 'sarah123'),
    ('Chris', 'Anderson', 'chrisanderson@example.com', 'chrispass'),
    ('Lisa', 'Garcia', 'lisagarcia@example.com', 'lisapass'),
    ('Kevin', 'Taylor', 'kevintaylor@example.com', 'kevinpass'),
    ('Amy', 'Moore', 'amymoore@example.com', 'amypass');

INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES
    (1, 1, 1, 50000, 20000),
    (1, 2, 3, 30000, 10000),
    (2, 3, 4, 20000, 5000),
    (3, 4, 5, 40000, 15000),
    (4, 5, 6, 25000, 8000),
    (5, 6, 7, 35000, 12000),
    (6, 7, 8, 30000, 10000),
    (7, 8, 9, 28000, 9000),
    (8, 9, 10, 32000, 11000),
    (9, 10, 11, 27000, 8500);

SELECT c.id AS car_id, cb.title AS brand, cm.title AS model, u.firstName, u.lastName
FROM cars c
INNER JOIN car_brands cb ON c.carBrandId = cb.id
INNER JOIN car_models cm ON c.carModelId = cm.id
INNER JOIN users u ON c.userId = u.id;

SELECT cb.title AS brand, COUNT(*) AS car_count
FROM cars c
INNER JOIN car_brands cb ON c.carBrandId = cb.id
GROUP BY cb.title;

SELECT u.firstName, u.lastName, MAX(c.mileage) AS max_mileage
FROM cars c
INNER JOIN users u ON c.userId = u.id
GROUP BY u.firstName, u.lastName
ORDER BY max_mileage DESC
LIMIT 10;

