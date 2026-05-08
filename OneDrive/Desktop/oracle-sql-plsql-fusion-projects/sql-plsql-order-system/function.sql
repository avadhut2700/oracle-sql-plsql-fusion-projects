CREATE OR REPLACE FUNCTION get_order_total(p_order_id NUMBER)
RETURN NUMBER IS
  total NUMBER;
BEGIN
  SELECT SUM(amount)
  INTO total
  FROM order_items
  WHERE order_id = p_order_id;

  RETURN total;
END;
