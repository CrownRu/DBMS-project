<!DOCTYPE html>
<html lang="en">
<style type="text/css">
    .search{
        position: relative;
        width: 35%;
        top:10%;
        left: 30%;
        float: left; 
    }
    .search-bar{
        width: 100%;
        height: 32px;
        font-size: 20px;
        border: 3px solid #3D1101;
        background-color: #efe9e7;
    }
    .search-btn{
        width: 70px;
        height: 32px;
        background-color: #3D1101;
        color:#efe9e7;
        outline:none;
        border: 2px solid #3D1101;
        cursor: pointer; 
        position: absolute;
        top: 0;
        right: 0; 
    }
    button.button{
        position: absolute;
        left:45%;
        width:10%;
        border-radius: 4px;
        background-color: white;
        color: black;
        border: 2px solid 	#4D1F00;
        -webkit-transition-duration: 0.4s; 
        transition-duration: 0.4s;
    }
    button.button:hover {
        background-color: 	#4D1F00; 
        color: white;
    }
    </style>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Crownru Select</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
                <span class="site-heading-upper text-primary mb-3">A reliable choice for you</span>
                <span class="site-heading-lower">Crown select shop</span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.php">Crown select shop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="index.php">Home</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="suppliers.php">Suppliers</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="customers.php">Customers</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="products.php">Products</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="store.php">Store</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="wrap">
                    <div class="search">
                        <form action='search_Product.php' method='POST'>
                            <input class="search-bar" type="text" name="search" id="search" placeholder="輸入鞋款相關資料">
                            <input type="submit" value="submit" class="search-btn"><i class="fas fa-search"></i></button>
                        </form>
                </div>
        <section class="page-section">
            <div class="container">

            <?php
            require("DBconn.php");
            $SQL="SELECT * FROM Brand ORDER BY bname";
            if($result=mysqli_query($link,$SQL)){
                echo "<table calss='main' border='1' width=1300px style='border:5px #FFD1A4 solid;background-color:Bisque;filter:alpha(opacity=95);opacity:0.9; border='2'>";
                echo "<thead align='left' hight='20px'><td><b>品牌</b></td><td><b>系列</b></td><td><b>鞋款</b></td><td><b>尺寸</b></td><td><b>庫存</b></td><td><b>售價</b></td><td><b>編輯</b></td></thead>";
                echo "<select name='brand'>";
                while($row=mysqli_fetch_assoc($result)){
                    $number=$row['number'];
                    $brand=$row['bname'];
                    $series=$row['series'];
                    $SQL2="SELECT * FROM Warehouse WHERE number='$number' ";
            //$SQL="SELECT Brand.bname,Brand.series,Brand.number,Warehouse.size,Warehouse.stock,Warehouse.price FROM Warehouse RIGHT JOIN Brand ON Warehouse.number=Brand.number";
            //$SQL="SELECT * FROM Warehouse";

            //echo $row["number"];
                    if($result2=mysqli_query($link, $SQL2)){
                        //echo "<table calss='main' border='1' width=1200px style='background-color:Linen; border='2'>";
                        //echo "<thead align='left'><td>品牌</td><td>系列</td><td>鞋款</td><td>尺寸</td><td>庫存</td><td>售價</td><td>編輯</td></thead>";
                        while($row=mysqli_fetch_assoc($result2)){
                            //echo $row["number"];
                            echo "<tbody align='left'>";
                            echo "<tr align='left'>";
                            echo "<td height='50px' align='left'>".$brand."</td>
                            <td align='left'>".$series."</td>
                            <td align='left'>".$row["number"]."</td>
                            <td align='left'>".$row["size"]."</td>
                            <td align='left'>".$row["stock"]."</td>
                            <td align='left'>".$row["price"]."</td>
                            <td class='main'><button style='border-radius: 4px;border: 0px;background-color: white;'><a href='deleteAll.php?number=".$row["number"]."'>Delete</a></button>  <button style='border-radius: 4px;border: 0px;background-color: white;'><a href='sell.php?number=".$row["number"]."'>Sell</a></button></td>";
                            echo "</tr>";
                            echo "</tbody>";
                        }
                    }
                }
                echo "</table>";
            }
            
            ?>
            </div>
            <button class='button'><a href="addShoes.php">add</a></button>
        </section>
    </body>
</html>
