CREATE TABLE Customers(
customer_id INTEGER,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
state VARCHAR(255),
zip_code INTEGER
);
CREATE TABLE Orders(
order_id INTEGER,
customer_id INTEGER,
order_date DATE,
total_amount DECIMAL
);
CREATE TABLE Order_items(order_item_id INTEGER,
						order_id INTEGER,
						product_id INTEGER,
						quantity INTEGER,
						price DECIMAL);
CREATE TABLE Products(product_id INTEGER,
					 product_name VARCHAR(255),
					 description VARCHAR(255),
					 price DECIMAL,
					 category_id INTEGER);
CREATE TABLE Categories(category_id INTEGER,
					   category_name VARCHAR(255),
					   description VARCHAR(255));
select * from orders
