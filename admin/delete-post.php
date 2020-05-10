<?php
session_start();
require_once "data/data.php";

$post_id = $_GET['post'];
$cat_id = $_GET['cat'];
$sql2= "select * from post where p_id= $post_id";
$result= Data::query($sql2);
$rs= mysqli_fetch_assoc($result);
unlink('upload/'.$rs['p_image']);
$sql = "delete from post where p_id = $post_id;";
$sql.= "update category set post= post-1 where c_id= $cat_id";
$result = Data::mul_query($sql);
header('location: post.php');
?>