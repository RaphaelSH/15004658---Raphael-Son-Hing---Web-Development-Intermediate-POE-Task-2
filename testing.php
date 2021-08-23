<?php
    include 'DBConn.php';

//customer table



$drop_query2 = 'DROP TABLE IF EXISTS `test`.`tbl_Order`';
$create_query2 = 'CREATE TABLE `test`.`tbl_Order` 
                        ( `orderID ` varchar(50) DEFAULT NULL, 
                            `cusID` varchar(50) DEFAULT NULL,
                            `itemID` varchar(50) DEFAULT NULL, 
                            `orderDate` varchar(50) DEFAULT NULL, 
                            `ordAddress` varchar(255) DEFAULT NULL, 
                            `orderPrice` DECIMAL(6,2) DEFAULT NULL, 

                            PRIMARY KEY (`orderID`) ) ';
$text_file2 = 'order.txt';



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
   

    list($orderID, $cusID, $itemID, $orderDate, $ordAddress, $orderPrice) = $explodeLine2;
    
    $qry2 = "INSERT INTO tbl_Order (orderID, cusID,itemID,orderDate,ordAddress,orderPrice) VALUES ('".$orderID."','".$cusID."','".$itemID."','".$orderDate."','".$ordAddress."','".$orderPrice."')";
    mysqli_query($conn,$qry2);
}
fclose($open2);


    header("location: welcome.php");
exit;
?>
