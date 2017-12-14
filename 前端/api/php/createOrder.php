<?php
    
    header("Access-Control-Allow-Origin: *");

    $ordernumber = isset($_POST['productid']) ? $_POST['productid'] : null;
    $starttime = isset($_POST['date']) ? $_POST['date'] : null;
    $product = isset($_POST['descriptName']) ? $_POST['descriptName'] : null;
    $personnumber = isset($_POST['num1']) ? $_POST['num1'] : null;
    $message = isset($_POST['message']) ? $_POST['message'] : null;
    $price = isset($_POST['total_price']) ? $_POST['total_price'] : null;
    $status = isset($_POST['status']) ? $_POST['status'] : null;
    $image = isset($_POST['image']) ? $_POST['image'] : null;
    $myname = isset($_POST['myname']) ? $_POST['myname'] : null;
    
    $conn = new mysqli('localhost','root','','list');

    //判断是否链接成功
    if($conn->connect_errno){
        die('链接失败'.$conn->connect_error);
    };

    //设置编码方式
    $conn->set_charset('utf8');

    $sql = "INSERT INTO createorders (ordernumber, starttime, product,personnumber,information,price,status,images,myname)
    VALUES ('$ordernumber', '$starttime', '$product','$personnumber','$message','$price','$status','$image','$myname')";
   
    $result = $conn->query($sql);
    if ($result === TRUE) {
        echo "新记录插入成功";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

?>