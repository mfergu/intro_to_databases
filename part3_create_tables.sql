CREATE TABLE CUSTOMER(  /* slide 6-14 */
						name 				VARCHAR(30)	NOT NULL,
						Address				VARCHAR(40),
						phone				CHAR(12),
						Cust_id 			INT NOT NULL,
						PRIMARY KEY(Cust_id)
						);
						
CREATE TABLE ORDERS(
						Order_id			INT NOT NULL,
						Table_num 			INT, 
						Cust_id 			INT NOT NULL,
						Delivery_method		CHAR(1),
						PRIMARY KEY(Order_id),
						FOREIGN KEY(Cust_id) REFERENCES CUSTOMER(Cust_id)
						);
CREATE TABLE DISCOUNTS(
						name				VARCHAR(30)NOT NULL,
						Percent_off			DECIMAL(6,3),
						Dollar_off			DECIMAL(6,3),
						Discount_id			INT NOT NULL,
						PRIMARY KEY(Discount_id)
						);
CREATE TABLE TOPPINGS(
						name				VARCHAR(20)NOT NULL,
						Price				DECIMAL(6,3)NOT NULL,
						Cost_per_unit		DECIMAL(6,3)NOT NULL,
						Current_inv			DECIMAL(6,3)NOT NULL,
						Sml_amt				DECIMAL(6,3)NOT NULL,
						Med_amt				DECIMAL(6,3)NOT NULL,
						Lrg_amt				DECIMAL(6,3)NOT NULL,
						Xlrg_amt			DECIMAL(6,3)NOT NULL,
						Topping_id			INT NOT NULL,
						PRIMARY KEY(Topping_id)
						);
CREATE TABLE BASE_PRICES(
						Size_				VARCHAR(10)NOT NULL,
						Crust				VARCHAR(20)NOT NULL,
						Price				DECIMAL(6,3)NOT NULL,
						Cost				DECIMAL(6,3)NOT NULL,
						Base_id				INT NOT NULL,
						PRIMARY KEY(Base_id)
						);
CREATE TABLE PIZZAS(
						Pizza_id 			INT NOT NULL,
						Time_ord			DATETIME NOT NULL,
						Time_comp			DATETIME,
						Order_id			INT NOT NULL,
						Base_type			INT NOT NULL,
						PRIMARY KEY(Pizza_id),
						FOREIGN KEY(Order_id) REFERENCES ORDERS(Order_id),
						FOREIGN KEY(Base_type) REFERENCES BASE_PRICES(Base_id)
						);
CREATE TABLE DISCOUNT_ORDERS(
						Order_id			INT NOT NULL,
						Discount_id			INT NOT NULL,
						Primary KEY(Order_id, Discount_id),
						FOREIGN KEY(Order_id) REFERENCES ORDERS(Order_id),
						FOREIGN KEY(Discount_id) REFERENCES DISCOUNTS(Discount_id)
						);
CREATE TABLE PIZZA_TOPPINGS(
						Pizza_id 			INT NOT NULL,
						Topping_id			INT NOT NULL,
						extra 				CHAR(1),
						PRIMARY KEY(Pizza_id, Topping_id),
						FOREIGN KEY(Pizza_id) REFERENCES PIZZAS(Pizza_id),
						FOREIGN KEY(Topping_id) REFERENCES TOPPINGS(Topping_id)
						);
CREATE TABLE DISCOUNT_PIZZAS(
						Discount_id 		INT NOT NULL,
						Pizza_id 			INT NOT NULL,
						PRIMARY KEY(Discount_id, Pizza_id),
						FOREIGN KEY(Discount_id) REFERENCES DISCOUNTS(Discount_id),
						FOREIGN KEY(Pizza_id) REFERENCES PIZZAS(Pizza_id)
						);
						
						
						
						
						
