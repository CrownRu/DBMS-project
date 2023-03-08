<?php
require("DBconn.php");
$brand=$_POST["brand"];
$serial=$_POST["serial"];
$bname=$_POST["bname"];
$number=$_POST["number"];
$size=$_POST["size"];
$price=$_POST["price"];
$stock=$_POST["stock"];
$sum=0;
$total=0;


$SQL1="INSERT INTO  Brand(bname, series, number) VALUES ('$brand','$serial','$number')";
$SQL2="INSERT INTO  Warehouse(size, price, number, bname, stock) VALUES ('$size','$price','$number','$bname','$stock')";
$SQL3="INSERT INTO  income(brand_name, shoes_name, number, sum, total_earning) VALUES ('$brand','$bname','$number','$sum','$total')";
$SQL4="SELECT * FROM Warehouse";
if($result=mysqli_query($link, $SQL4)){
    while($row=mysqli_fetch_assoc($result)){
        if($row["number"]==$number){
            $newstock=$stock+$row["stock"];
            $SQL="UPDATE Warehouse SET stock=$newstock WHERE number='$number'";
        }
    }
}
if(mysqli_query($link, $SQL1)&&mysqli_query($link, $SQL2)&&mysqli_query($link, $SQL3)){
    echo "<script type='text/javascript'>";
    echo "alert('新增成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}
elseif(mysqli_query($link, $SQL1)&&mysqli_query($link, $SQL)&&mysqli_query($link, $SQL3)){
    echo "<script type='text/javascript'>";
    echo "alert('新增成功')";
    echo "</script>";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}
else{
    echo "<script type='text/javascript'>";
    echo "alert('新增失敗')";
    echo "</script>";
    echo "$brand";
    echo "$serial";
    echo "$bname";
    echo "$number";
    echo "$size";
    echo "$price";
    echo "$stock";
    echo "$sum";
    echo "$total";
    echo "<meta http-equiv='Refresh' content='0; url=products.php'>";
}
?>