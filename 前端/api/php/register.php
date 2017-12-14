<?php
    
    header("Access-Control-Allow-Origin: *");

    $username = isset($_POST['username']) ? $_POST['username'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;

    //链接数据库
    $conn = new mysqli('localhost','root','','list');

    //判断是否链接成功
    if($conn->connect_errno){
        die('链接失败'.$conn->connect_error);
    };

    //设置编码方式
    $conn->set_charset('utf8');

    // $sql = "select * from enter";
    //编写sql语句
    $sql ="INSERT INTO students (username,password) VALUES ('$username','$password')";

    if($username&&$password){
        if($conn->query($sql)===true){
            echo 'true';
        }else{
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
   



?>