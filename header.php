<?php
    require_once "admin/data/data.php";
    $sql= "select * from category where post > 0 ";
    $result = Data::query($sql);

    $sql2="select * from setting";
    $result2= Data::query($sql2);
    $rs2= mysqli_fetch_assoc($result2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>News</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <style>
    </style>
</head>
<body>
<!-- HEADER -->
<div id="header">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- LOGO -->
            <div class=" col-md-offset-4 col-md-4">
                <a href="index.php" id="logo"><img src="images/<?php echo $rs2['web_logo'] ?>"></a>
            </div>
            <!-- /LOGO -->
        </div>
    </div>
</div>
<!-- /HEADER -->
<!-- Menu Bar -->
<div id="menu-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class='menu'>
                    <?php 
                    if(!isset($_GET['cat'])){
                        echo "<li><a class='active' href='index.php'>Home</li>";
                    }else{
                        echo "<li><a class='' href='index.php'>Home</li>";
                    }
                        while($rs= mysqli_fetch_assoc($result)){
                            if(isset($_GET['cat'])){
                                if($_GET['cat'] == $rs['c_id']){
                                $active= "active";
                                }else{
                                    $active = "";
                                }
                            }else{
                                $active = "";
                            }
                            echo "<li><a class='$active' href='category.php?cat=".$rs['c_id']."'>".$rs['c_name']."</a></li>";
                        } ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- /Menu Bar -->
