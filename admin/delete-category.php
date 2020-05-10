<?php
require_once "data/data.php";
session_start();
Data::user_r($_SESSION);

$user_id = $_GET['id'];
$sql = "delete from category where c_id = $user_id";
$result = Data::query($sql);
header('location: category.php');
?>