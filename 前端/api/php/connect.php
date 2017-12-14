<?php
    
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'list';

    $conn = new mysqli('localhost','root','','list');

    if($conn->$connect_errno){
        die('连接失败'.$connect_error);
    }
    //设置编码
    $conn->set_charset('utf8');






?>