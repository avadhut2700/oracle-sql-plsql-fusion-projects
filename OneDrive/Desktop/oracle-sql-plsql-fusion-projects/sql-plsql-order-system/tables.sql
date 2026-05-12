CREATE TABLE customers (
  customer_id NUMBER PRIMARY KEY,
  name VARCHAR2(50),
  email VARCHAR2(100),
  city VARCHAR2(50)
);

CREATE TABLE products (
  product_id NUMBER PRIMARY KEY,
  product_name VARCHAR2(100),
  price NUMBER,
  stock NUMBER
);

CREATE TABLE orders (
  order_id NUMBER PRIMARY KEY,
  customer_id NUMBER,
  order_date DATE,
  status VARCHAR2(20),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  item_id NUMBER PRIMARY KEY,
  order_id NUMBER,
  product_id NUMBER,
  quantity NUMBER,
  amount NUMBER,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
  payment_id NUMBER PRIMARY KEY,
  order_id NUMBER,
  payment_date DATE,
  amount NUMBER,
  status VARCHAR2(20),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
