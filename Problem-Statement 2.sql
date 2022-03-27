CREATE DATABASE bookstore ;
use bookstore ;
CREATE TABLE `books` (
  `Book_id` varchar(10) NOT NULL,
  `Book_name` varchar(50) NOT NULL,
  `Auther` varchar(20) NOT NULL,
  `Price` double NOT NULL, 
  constraint pk1 primary key (Book_id) 
);

CREATE TABLE `order_details` (
  `Order_Id` int(11) NOT NULL,
  `Book_Id` varchar(20) NOT NULL,
  `Cust_Name` varchar(20) NOT NULL,
  `Phone_No` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Order_Date` date NOT NULL,
  `Quantity` int(11) NOT NULL,
   constraint pk1 primary key (Order_Id) ,
   constraint fk1 foreign key (Book_Id) 
   references books (Book_id) ) ;

CREATE TABLE `Users` (
  `first_name` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `registration_date` date NOT NULL
);
 
 select * from Users ;
 