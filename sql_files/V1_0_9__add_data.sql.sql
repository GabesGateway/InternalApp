ALTER TABLE `user_login` ADD PRIMARY KEY(`Username`);

INSERT INTO `user` (`UserID`, `Orders`, `Fname`, `Lname`, `Shipping Address`, `Age`, `Email`, `Phone`) VALUES ('1', '1', 'Jack', 'Frost', '233 S WACKER DR STE 1400', '24', 'Jforst@gmail.com', '773-764- 9315'), ('2', '1', 'Kobe', 'Bryant', '1229 W GREENLEAF AVE', '21', 'Kbryant@gmail.com', '773-964-0932'), ('3', '1', 'Finn', 'Jones', '1417 W ALBION AVE', '27', 'Fjones@gmail.com', '773-912-8736'), ('4', '1', 'Tom', 'Hildiwara', '5526 N WINTHROP AVE', '20', 'Thildiwara@gmail.com', '773-465-7892'), ('5', '1', 'Vicki', 'Flowers', '4841 W ADDISON ST', '28', 'Vflowers@gmail.com', '773-094-7038'), ('6', '1', 'Nina', 'Lucas', '5347 W BELMONT AVE', '24', 'Nlucas@gmail.com', '773-032-5142');

INSERT INTO `user_login` (`Username`, `password`, `UserID`) VALUES ('JFrost', 'n27#qNP2WksE', '1'), ('Kbryant', 'ieZ7%^2zJI1u', '2'), ('Fjones', 'bxquiRL3x03^', '3'), ('Thildiwara', '5b%e9*9OT66*', '4'), ('Vflowers', '!83S9U0Any6Z', '5'), ('Nlucas', 'h0x5bh1&M9D9', '6');

INSERT INTO `cart` (`CartID`, `NoOfItems`, `Subtotal`, `UserID`) VALUES ('1', '1', '1099.99', '1'), ('2', '1', '799.99', '2'), ('3', '1', '579.99', '3'), ('4', '1', '799.99', '4'), ('5', '1', '549.99', '5'), ('6', '1', '1299.99', '6');

INSERT INTO `goes in` (`ProductID`, `CartID`, `Quantity`) VALUES ('1', '1', '1'), ('2', '2', '1'), ('3', '3', '1'), ('4', '4', '1'), ('5', '5', '1'), ('6', '6', '1');