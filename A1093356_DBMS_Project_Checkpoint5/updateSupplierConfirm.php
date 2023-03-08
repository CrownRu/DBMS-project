<?php
require("DBconn.php");
$name=$_POST["name"];
$address=$_POST["address"];


$SQL="UPDATE Suppliers SET name='$name', address='$address' WHERE name='$name'";

if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('更新成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('更新失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}
?>