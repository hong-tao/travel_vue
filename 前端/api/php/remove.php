<?php
    header("Access-Control-Allow-Origin: *");

    $ordernumber = isset($_POST['ordernumber']) ? $_POST['ordernumber'] : null;
    $status = isset($_POST['status']) ? $_POST['status'] : null;


    $conn = new mysqli('localhost','root','','list');

    if($conn->connect_errno){
        die('连接失败'.$conn->connect_error);
    }

    $conn->set_charset('utf8');

    $sql = "update createorders set status='$status' where ordernumber='$ordernumber'";

    $conn->query($sql);

   
    echo 'true'


?>