LOAD DATA LOCAL INFILE 'D:\\Users\\WOJTEK\\Documents\\school\\summer_2017\\4620\\data_customer.txt'
	INTO TABLE CUSTOMER
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n';
	
LOAD DATA LOCAL INFILE 'D:\\Users\\WOJTEK\\Documents\\school\\summer_2017\\4620\\data_topping.txt'
	INTO TABLE TOPPINGS
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n';
	
LOAD DATA LOCAL INFILE 'D:\\Users\\WOJTEK\\Documents\\school\\summer_2017\\4620\\data_base-price.txt'
	INTO TABLE BASE_PRICES
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'D:\\Users\\WOJTEK\\Documents\\school\\summer_2017\\4620\\data_discount.txt'
	INTO TABLE DISCOUNTS
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n';
	
/*	SELECT *   
	FROM DISCOUNTS;
	
	DELETE CUSTOMER 
	FROM CUSTOMER
	WHERE Cust_id=0;
	*/