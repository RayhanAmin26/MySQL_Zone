-- Active: 1731737897142@@127.0.0.1@3306@inventory


--users
CREATE TABLE `user1`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstName` VARCHAR(50) NOT NULL,
    `lastName` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `mobile` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `otp` VARCHAR(50) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP
)



CREATE TABLE `categories`(
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `user_id` BIGINT(20) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
     FOREIGN KEY(`user_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)


CREATE TABLE `customers`(
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NOT,
    `mobile` VARCHAR(50) NOT NOT,
    `user_id` BIGINT(20) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
     FOREIGN KEY(`user_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)


CREATE TABLE `product`(
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `price` VARCHAR(50) NOT NOT,
    `unit` VARCHAR(50) NOT NOT,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
     FOREIGN KEY(`user_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT(),

     `user_id` BIGINT(20) UNSIGNED NOT NULL,
     `category_id` BIGINT(20) UNSIGNED  NOT NULL,
     Foreign Key (`user_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
     Foreign Key (`category_id`) REFERENCES `categories`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT


CREATE TABLE `invoice`(
    `id` bigint (20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `total` VARCHAR (50) NOT NULL,
    `discount` VARCHAR (50) NOT NOT,
    `vat` VARCHAR (50) NOT NOT,
    `payable` VARCHAR (50) NOT NOT,

    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),

    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `category_id` BIGINT(20) UNSIGNED  NOT NULL,

     Foreign Key (`user1_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
     Foreign Key (`customer_id`) REFERENCES `customers`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT


CREATE TABLE `invoice_product`(
    `id` bigint (20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `qty` VARCHAR (50) NOT NULL,
    `sale_price` VARCHAR (50) NOT NOT,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED  NOT NULL,
    `invoice_id` BIGINT(20) UNSIGNED NOT NULL,
    Foreign Key (`user1_id`) REFERENCES `user1`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
    Foreign Key (`product_id`) REFERENCES `products`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
    Foreign Key (`invoice_id`) REFERENCES `invoice`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at`TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()



     
  
    
)
