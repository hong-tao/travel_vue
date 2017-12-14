<?php
    
    header("Access-Control-Allow-Origin: *");

    $productid = isset($_POST['productID']) ? $_POST['productID'] : null;

    $conn = new mysqli('localhost','root','','list');

    if($conn->connect_errno){
        die('链接失败'.$conn->connect_error);
    }

    $conn->set_charset('utf8');

    $sql = "select * from details";

    if($productid){
        $sql .=" where productID='$productid'";
    }

    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    $row = json_encode($row,JSON_UNESCAPED_UNICODE);
    echo $row


?>