<?php
	header('Access-Control-Allow-Origin:*');

    include "DBHelper.php";
     
    $title = isset($_POST["title"]) ? $_POST["title"] : '';//搜索的标题


    if($title != ''){
        $sql = "select * from createorders where product or information like '%$title%'";
    }else {
        $sql = "select * from createorders";  
    }
    $result = $conn->query($sql);

    $row = $result->fetch_all(MYSQLI_ASSOC);

    // 用完数据清掉释放内存
    $conn->close();

    echo json_encode($row,JSON_UNESCAPED_UNICODE);
?>