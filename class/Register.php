<?php
$host       = "localhost";
$user       = "root";
$password   = "";
$dbname     = "perpustakaan";

$sambung=mysqli_connect($host,$user,$password,$dbname);

    if(isset($_POST['tambah'])){
      $role = "user";
      $password = md5($_POST["password"]);
        mysqli_query($sambung,"insert into user (username,password,role) values ('$_POST[username]','$password','$role')");
        
    }
    header("location:../index.php");
?>