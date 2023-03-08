<?php
require("DBconn.php");
$name=$_POST["name"];
$address=$_POST["address"];



$SQL="INSERT INTO  Suppliers(name, address) VALUES ('$name','$address')";

if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('新增成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('新增失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}
?>