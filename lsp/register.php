<?php
    include "class/Database.php";
    if(isset($_POST['tambah'])){
        $pengarang  = $_POST['pengarang'];
        $penerbit   = $_POST['penerbit'];
        
        // mysqli_query("insert into user (username,password) values ()");
        $sql = "INSERT into user (id_user) values ('$id_user')";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regis</title>
</head>
<body>
<div class="form-regis">
        <form action="" method="post">
        <div>
            <label>Username</label>
            <input type="text" name="username">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password">
        </div>
        <div>
        <button type="submit" name="submit">Regis</button>
        </form>
        </div>

</body>
</html>