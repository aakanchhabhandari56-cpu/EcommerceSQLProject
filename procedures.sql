-- Procedure to update stock when an order is placed
DELIMITER //
CREATE PROCEDURE UpdateStock(IN orderId INT)
BEGIN
    DECLARE prodId INT;
    DECLARE qty INT;
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR 
        SELECT ProductID, Quantity FROM OrderItems WHERE OrderID = orderId;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO prodId, qty;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE Products
        SET StockQuantity = StockQuantity - qty
        WHERE ProductID = prodId;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
