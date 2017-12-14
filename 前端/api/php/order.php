<?php
    header("Access-Control-Allow-Origin: *");

    $myname = isset($_POST['myname']) ? $_POST['myname'] : null;
    $status = isset($_POST['status']) ? $_POST['status'] : null;
    $ordernumber = isset($_POST['ordernumber']) ? $_POST['ordernumber'] : null;

    $conn = new mysqli('localhost','root','','list');

    if($conn->connect_errno){
        die('连接失败'.$conn->connect_error);
    }

    $conn->set_charset('utf8');

    $sql = "select * from createorders where myname='$myname'";

    if(count($status)){
        $sql.=" and status='$status'";
    }
    if(count($ordernumber)){
        $sql.=" and ordernumber='$ordernumber'";
    }

    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    $row = json_encode($row,JSON_UNESCAPED_UNICODE);

    echo $row;
?>