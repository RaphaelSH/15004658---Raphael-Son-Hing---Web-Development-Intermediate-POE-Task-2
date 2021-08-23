<?php
    include 'DBConn.php';

//customer table

    $drop_query1 = 'DROP TABLE IF EXISTS `test`.`tbl_Customer`';
    $create_query1 = 'CREATE TABLE `test`.`tbl_Customer` 
                            ( `cusID` varchar(50) DEFAULT NULL, 
                            `cusName` varchar(255) DEFAULT NULL, 
                            `cusAddress` varchar(255) DEFAULT NULL, 
                            `cusContact` varchar(255) DEFAULT NULL, 
                            PRIMARY KEY (`cusID`) ) ';
    $text_file1 = 'customer.txt';
  


    if(!file_exists($text_file1)) 
    {
        die("File not found. Make sure you specified the correct path.");
    }
    mysqli_query($conn,$drop_query1); // drop the table if it exists
    mysqli_query($conn,$create_query1); //create the table
    $open1 = fopen($text_file1,'r');

    while (!feof($open1)) 
    {
        $getTextLine1 = fgets($open1);
        $explodeLine1 = explode(",",$getTextLine1);
       

        list($cusID, $cusName, $cusAddress, $cusContact) = $explodeLine1;
        
        $qry1 = "INSERT INTO tbl_Customer (cusID, cusName,cusAddress,cusContact) VALUES ('".$cusID."','".$cusName."','".$cusAddress."','".$cusContact."')";
        mysqli_query($conn,$qry1);
    }
    fclose($open1);

//item table

    $drop_query2 = 'DROP TABLE IF EXISTS `test`.`tbl_Item`';
    $create_query2 = 'CREATE TABLE `test`.`tbl_Item` 
                            ( `itemID` varchar(50) DEFAULT NULL, 
                            `itemName` varchar(255) DEFAULT NULL, 
                            `itemAmount` int(11) DEFAULT NULL, 
                            `itemPrice` DECIMAL(6,2) DEFAULT NULL, 
                            PRIMARY KEY (`itemID`) ) ';
    $text_file2 = 'item.txt';
  


    if(!file_exists($text_file2)) 
    {
        die("File not found. Make sure you specified the correct path.");
    }
    mysqli_query($conn,$drop_query2); // drop the table if it exists
    mysqli_query($conn,$create_query2); //create the table
    $open2 = fopen($text_file2,'r');

    while (!feof($open2)) 
    {
        $getTextLine2 = fgets($open2);
        $explodeLine2 = explode(",",$getTextLine2);
       

        list($itemID, $itemName, $itemAmount, $itemPrice) = $explodeLine2;
        
        $qry2 = "INSERT INTO tbl_Item (itemID, itemName,itemAmount,itemPrice) VALUES ('".$itemID."','".$itemName."','".$itemAmount."','".$itemPrice."')";
        mysqli_query($conn,$qry2);
    }
    fclose($open2);

//order table

    $drop_query3 = 'DROP TABLE IF EXISTS `test`.`tbl_Order`';
    $create_query3 = 'CREATE TABLE `test`.`tbl_Order` 
                            ( `orderID` varchar(50) DEFAULT NULL, 
                            `cusID` varchar(50) DEFAULT NULL,
                            `itemID` varchar(50) DEFAULT NULL, 
                            `orderDate` varchar(50) DEFAULT NULL, 
                            `ordAddress` varchar(255) DEFAULT NULL, 
                            `orderPrice` DECIMAL(6,2) DEFAULT NULL, 

                            PRIMARY KEY (`orderID`) ) ';
    $text_file3 = 'order.txt';
  


    if(!file_exists($text_file3)) 
    {
        die("File not found. Make sure you specified the correct path.");
    }
    mysqli_query($conn,$drop_query3); // drop the table if it exists
    mysqli_query($conn,$create_query3); //create the table
    $open3 = fopen($text_file3,'r');

    while (!feof($open3)) 
    {
        $getTextLine3 = fgets($open3);
        $explodeLine3 = explode(",",$getTextLine3);
       

        list($orderID, $cusID, $itemID, $orderDate, $ordAddress, $orderPrice) = $explodeLine3;
        
        $qry3 = "INSERT INTO tbl_Order (orderID, cusID,itemID,orderDate,ordAddress, orderPrice) VALUES ('".$orderID."','".$cusID."','".$itemID."','".$orderDate."','".$ordAddress."','".$orderPrice."')";
        mysqli_query($conn,$qry3);
    }

    fclose($open3);

    header("location: welcome.php");
exit;
?>
