<?php

require("DBconn.php");

$name=$_GET["name"];
$SQL="DELETE FROM Suppliers WHERE name='$name'";
if(mysqli_query($link, $SQL)){
    echo "<script type='text/javascript'>";
    echo "alert('刪除成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}else{
    echo "<sscript type='text/javascript'>";
    echo "alert('刪除失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=suppliers.php'>";
}

?>