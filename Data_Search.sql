-- ДЗ 13. Пошук даних в qaAuto

-- 1. Знайти власників у яких у імені є послідовність букв "am";
SELECT u.id, up.name AS user_name
FROM hillel_qaauto.users u
JOIN hillel_qaauto.user_profiles up ON u.id = up.userId
WHERE up.name LIKE '%am%';   

-- 2. Знайти найбільшу витрату серед Audi;	
SELECT MAX(e.totalCost) AS max_expense
FROM hillel_qaauto.expenses e
JOIN hillel_qaauto.cars c ON e.carId = c.id
JOIN hillel_qaauto.car_brands cb ON c.carBrandId = cb.id
WHERE cb.title = 'Audi'; 

-- 3. Знайти кількість моделей у брендів AUDI та BMW. Вивести стовпчики count_models (кількість моделей) та car_id (id бренду)
SELECT cb.id AS car_id, COUNT(cm.id) AS count_models
FROM hillel_qaauto.car_brands cb
LEFT JOIN hillel_qaauto.cars c ON cb.id = c.carBrandId
LEFT JOIN hillel_qaauto.car_models cm ON c.carModelId = cm.id
WHERE cb.title IN ('Audi', 'BMW')
GROUP BY cb.id; 

-- 4. Знайдіть кількість власників за марками та моделями автомобілів. Вивести три стовпчики car_model, car_barnd і user_count
SELECT cm.title AS car_model, cb.title AS car_brand, COUNT(u.id) AS user_count
FROM hillel_qaauto.cars c
JOIN hillel_qaauto.car_models cm ON c.carModelId = cm.id
JOIN hillel_qaauto.car_brands cb ON c.carBrandId = cb.id
JOIN hillel_qaauto.users u ON c.userId = u.id
GROUP BY cm.title, cb.title; 

-- 5. Знайти імена юзерів, у яких є машини;
SELECT up.name AS user_name
FROM hillel_qaauto.cars c
JOIN hillel_qaauto.user_profiles up ON c.userId = up.userId
LIMIT 0, 1000;

















