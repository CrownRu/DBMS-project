<?php

require("DBconn.php");

$cid=$_GET["cid"];
$SQL="DELETE FROM Customer WHERE cid='$cid'";
if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('刪除成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}else{
    echo "<sscript type='text/javascript'>";
    echo "alert('刪除失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=customers.php'>";
}

?>