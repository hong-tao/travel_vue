<?php
    header("Access-Control-Allow-Origin: *");
    $username = isset($_POST['name']) ? $_POST['name'] : null;
    $realname = isset($_POST['realname']) ? $_POST['realname'] :null;
    $phone = isset($_POST['phone']) ? $_POST['phone'] :null;
    $email = isset($_POST['email']) ? $_POST['email'] :null;

    $conn = new mysqli('localhost','root','','list');
    if($conn->connect_errno){
        die('链接失败'.$conn->connect_error);
    }

    $conn->set_charset('utf8');

    $sql = "update students set realname='$realname',phone='$phone',email='$email' where username='$username'";
    
    $result = $conn->query($sql);

    if($result===true){
        echo "true";
    }else{
        echo "Error: " . $sql . "<br>" . $conn->error;
    }


?>