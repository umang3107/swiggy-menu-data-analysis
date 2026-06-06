-- Create Restaurants Table

CREATE TABLE Restaurants (
    restaurant_name VARCHAR(255),
    cuisine VARCHAR(255),
    rating DECIMAL(2,1),
    reviews INT,
    cost_for_two INT,
    locality VARCHAR(100),
    delivery_time INT,
    restaurant_type VARCHAR(50)
);

-- Create Menu Items Table

CREATE TABLE Menu_Items (
    restaurant_name VARCHAR(255),
    category VARCHAR(100),
    item_name VARCHAR(255),
    price INT
);

-- 1. Top 5 Highest Rated Restaurants

SELECT restaurant_name, rating
FROM Restaurants
ORDER BY rating DESC
LIMIT 5;

-- 2. Average Cost For Two By Cuisine

SELECT cuisine, AVG(cost_for_two) AS average_cost
FROM Restaurants
GROUP BY cuisine;

-- 3. Restaurants With More Than One Cuisine Tag

SELECT restaurant_name, cuisine
FROM Restaurants
WHERE cuisine LIKE '%,%';

-- 4. Highest Priced Menu Item

SELECT item_name, restaurant_name, price
FROM Menu_Items
ORDER BY price DESC
LIMIT 1;