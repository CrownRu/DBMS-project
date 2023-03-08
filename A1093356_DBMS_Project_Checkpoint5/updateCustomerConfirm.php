<?php
require("DBconn.php");
$cid=$_POST["cid"];
$cname=$_POST["cname"];
$phone=$_POST["phone"];


$SQL="UPDATE Customer SET cname='$cname', phone='$phone' WHERE cid='$cid'";

if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('更新成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('更新失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}
?>