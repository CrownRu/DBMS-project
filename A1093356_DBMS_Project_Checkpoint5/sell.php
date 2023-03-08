<?php
require("DBconn.php");
$number=$_GET["number"];

$SQL="SELECT * FROM Warehouse WHERE number='$number'";
if($result=mysqli_query($link,$SQL)){
    while($row=mysqli_fetch_assoc($result)){
        $shoes_name=$row['bname'];
        $price=$row['price'];
        $stock=$row['stock']-1;
    }
}

$SQL2="SELECT * FROM income WHERE number='$number'";
if($result=mysqli_query($link,$SQL2)){
    while($row=mysqli_fetch_assoc($result)){
        $sum=$row['sum']+1;
        $total_earning=$row['total_earning'];
    }
}
$newearn=$total_earning+$price;
if(mysqli_query($link, $SQL)&&mysqli_query($link, $SQL2)){
        $SQL3="UPDATE income SET income.sum='$sum',income.total_earning='$newearn' WHERE number='$number'";
        $SQL4="UPDATE Warehouse SET stock='$stock' WHERE number='$number'";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('售出失敗哈哈')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}

if(mysqli_query($link, $SQL3)&&mysqli_query($link, $SQL4)){
    echo "<script type='text/javascript'>";
    echo "alert('售出成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}else{
    echo "<script type='text/javascript'>";
    echo "alert('售出失敗')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}
?>