ALTER TABLE `product` ADD `Sales` INT NOT NULL AFTER `Brand`;


CREATE VIEW Product_sales AS SELECT ProductID, Product_name, Sales, Sales * Price AS Profit FROM product;


CREATE VIEW Total_sales AS SELECT SUM(Profit) AS Total_profit FROM product_sales;


CREATE TABLE `user` (`UserID` INT NOT NULL AUTO_INCREMENT , `Orders` INT NOT NULL , `Fname` VARCHAR(30) NOT NULL , `Lname` VARCHAR(30) NOT NULL , `Shipping Address` VARCHAR(50) NOT NULL , `Age` INT NOT NULL , `Email` VARCHAR(50) NOT NULL , `Phone` VARCHAR(30) NOT NULL , PRIMARY KEY (`UserID`)) ENGINE = InnoDB;

CREATE TABLE `user_login` (`Username` VARCHAR(20) NOT NULL , `password` VARCHAR(30) NOT NULL , `UserID` INT NOT NULL ) ENGINE = InnoDB;


ALTER TABLE `user_login` ADD CONSTRAINT `user_login_FK_1` FOREIGN KEY (`UserID`) REFERENCES `user`(`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;


CREATE TABLE `cart` (`CartID` INT NOT NULL , `NoOfItems` INT NOT NULL , `Subtotal` DOUBLE NOT NULL , `UserID` INT NOT NULL , PRIMARY KEY (`CartID`)) ENGINE = InnoDB;


ALTER TABLE `cart` ADD CONSTRAINT `cart_FK_1` FOREIGN KEY (`UserID`) REFERENCES `user`(`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;


CREATE TABLE `goes in` (`ProductID` INT NOT NULL , `CartID` INT NOT NULL , `Quantity` INT NOT NULL , PRIMARY KEY (`ProductID`, `CartID`)) ENGINE = InnoDB;


ALTER TABLE `goes in` ADD CONSTRAINT `goes_in_FK_1` FOREIGN KEY (`ProductID`) REFERENCES `product`(`ProductID`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `goes in` ADD CONSTRAINT `goes_in_FK_2` FOREIGN KEY (`CartID`) REFERENCES `cart`(`CartID`) ON DELETE RESTRICT ON UPDATE RESTRICT;


