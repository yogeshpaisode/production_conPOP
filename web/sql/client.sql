DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
    firstName text,
    lastName text,
    email text,
    mobile text,
    gender text,
  PRIMARY KEY (`user_ID`) USING BTREE
) ENGINE=InnoDB;

DROP TABLE IF EXISTS address;
CREATE TABLE  address (
  `address_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

   type_Addr text,
    pincode text,
    state_Addr text,
city text,
firstName text,
lastName text,
landMark text,
mobileNo text,

  `user_ID` int(10) unsigned NOT NULL,

  PRIMARY KEY (`address_ID`) USING BTREE,

  KEY `FK_TRANSACTION_User_ID` (`user_ID`),
  CONSTRAINT `FK_STOCK_TRANSACTION_user_ID` FOREIGN KEY (`user_ID`) 
  REFERENCES `user` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE

) ENGINE=InnoDB;



DROP TABLE IF EXISTS cart;
CREATE TABLE  cart (
  `cart_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,

   is_cart boolean,
is_wishList boolean,
is_order boolean,
trx_id text,

  `user_ID` int(10) unsigned NOT NULL,
    `product_by_Color_ID` int(10) unsigned NOT NULL,
  `product_Size_ID` int(10) unsigned NOT NULL,
  

  PRIMARY KEY (`cart_ID`) USING BTREE,

  KEY `FK_TRANSACTION_User_ID_cart` (`user_ID`),
  CONSTRAINT `FK_TRANSACTION_User_ID_cart` FOREIGN KEY (`user_ID`) 
  REFERENCES `user` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE,

KEY `FK_product_by_Color_ID_cart` (`product_by_Color_ID`),
  CONSTRAINT `FK_product_by_Color_ID_cart` FOREIGN KEY (`product_by_Color_ID`) 
  REFERENCES `product_by_Color` (`product_by_Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE,

 KEY `FK_product_Size_ID_cart` (`product_Size_ID`),
  CONSTRAINT `FK_product_Size_ID_cart` FOREIGN KEY (`product_Size_ID`) 
  REFERENCES `product_Size` (`product_Size_ID`) ON DELETE CASCADE ON UPDATE CASCADE

) ENGINE=InnoDB;
