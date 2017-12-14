<?php
    header('Access-Control-Allow-Origin:*');
     header('Content-Type:text/json;charset=utf-8');
    
    include 'DBHelper.php';
    
    //传入数据
    
    $productID = isset($_REQUEST['productID']) ? $_REQUEST['productID'] : '';
    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $originprice = isset($_REQUEST['originPrice']) ? $_REQUEST['originPrice'] : '';
    $price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
    $url = isset($_REQUEST['url']) ? $_REQUEST['url'] : '';
   
    
    
  
    //编写sql语句
        $sql = "select * from details where productID =  '$productID' ";
    
    
    //获取查询结果集
    $result = $conn->query($sql);
    
    //$row = $result = $conn->query($sql);得到一个查询结果集
    // $row = $result->fetch_row();使用查询结果集，返回数组
    //使用查询结果集，返回数组
     $row = $result->fetch_all(MYSQLI_ASSOC);
    
    //释放查询结果集
    $result->close();
    
    // 把数组转换成json字符串
    $res = json_encode($row,JSON_UNESCAPED_UNICODE);
    
    
    // 格式化数据
    $res = array(
        'data'=>$row,
    );
    
    //关闭数据库
    $conn->close();
    
    //把结果输到前台
    echo json_encode($res,JSON_UNESCAPED_UNICODE);