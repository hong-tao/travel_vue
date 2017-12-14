<?php
    
     header("Access-Control-Allow-Origin: *");

     $star = isset($_POST['star']) ? $_POST['star'] : null;
     $add = isset($_POST['adr']) ? $_POST['adr'] : null;
     // var_dump($star,$add);
     $con = new mysqli('localhost','root','','list');
    if($con->connect_errno){
        die('链接失败'.$con->connect_error);
    }

    $con->set_charset('utf8');
    $sql = "select * from facehotel where star='$star' and `add`='$add'";
  
    $result = $con->query($sql);
    
    $row = $result->fetch_all(MYSQLI_ASSOC);
    
    $row = json_encode($row,JSON_UNESCAPED_UNICODE);
    echo $row

?>