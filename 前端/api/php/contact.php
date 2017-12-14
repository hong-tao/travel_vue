<?php
    header("Access-Control-Allow-Origin: *");

    $username = isset($_POST['username']) ? $_POST['username'] : null;


    //链接数据库
    $conn = new mysqli('localhost','root','','list');

    //判断是否链接成功
    if($conn->connect_errno){
        die('链接失败'.$conn->connect_error);
    };

    //设置编码方式
    $conn->set_charset('utf8');

    //编写sql语句
    $sql = "select * from students where username='$username'";

    //得到搜索的结果
    $result= $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    $row = json_encode($row,JSON_UNESCAPED_UNICODE);

    echo $row;

?>