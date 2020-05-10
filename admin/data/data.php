<?php

class Data {
    function conn(){
        $host = 'localhost';
        $user= 'root';
        $pass= '';
        $database= 'learn2020';
        $conn= mysqli_connect($host, $user, $pass, $database) or die('connection has a problem');
        return $conn;
    }

    function query($sql){
       $result = mysqli_query(Data::conn(), $sql) or die('query has a problem');
       return $result;
    }

    function mul_query($sql){
        $result = mysqli_multi_query(Data::conn(), $sql) or die('query has a problem');
        return $result;
    }
    
    function user_r($data){
        if($data['user_role']== '0'){
            header("location: post.php");
        }
    }

}

?>