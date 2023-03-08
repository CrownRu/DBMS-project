<?php
require("DBconn.php");
$id=$_POST["id"];
$name=$_POST["name"];
$phone=$_POST["phone"];



$SQL="INSERT INTO  Customer(cid, cname, phone) VALUES ('$id','$name','$phone')";

if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('新增成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('新增失敗，請確定輸入完整或編號已存在')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}
?>