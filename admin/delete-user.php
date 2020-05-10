<?php
session_start();
require_once "data/data.php";
Data::user_r($_SESSION);

$user_id = $_GET['id'];
$sql = "delete from user where user_id = $user_id";
$result = Data::query($sql);
header('location: post.php');
?>