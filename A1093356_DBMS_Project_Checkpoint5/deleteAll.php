<?php

require("DBconn.php");

$number=$_GET["number"];
$SQL="DELETE FROM Warehouse WHERE number='$number'";
$SQL2="DELETE FROM Brand WHERE number='$number'";
$SQL3="DELETE FROM income WHERE number='$number'";
if(mysqli_query($link, $SQL)&&mysqli_query($link, $SQL2)&&mysqli_query($link, $SQL3)){
    echo "<script type='text/javascript'>";
    echo "alert('刪除成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=index.php'>";
}else{
    echo "<sscript type='text/javascript'>";
    echo "alert('刪除失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=index.php'>";
}

?>