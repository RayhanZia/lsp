<?php
include_once("class/User.php");
include_once("class/Login.php");

session_start();

$user = new User;

if (isset($_SESSION['id'])) {
    $data_user = $user->find($_SESSION['id']);
    if ($data_user['role'] == 'admin') {
        header("Location: admin/index.php");
    } elseif ($data_user['role'] == 'user') {
        header("Location: user/index.php");
    }
}

$login = new Login;
if (isset($_POST['submit'])) {
    $login->authLogin(
        [
            "username" => $_POST['username'],
            "password" => $_POST['password'],
        ]
    );
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
      /* Style for the login form */
.form-login {
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    box-shadow: 0 0 10px #ccc;
}

/* Style for the form fields */
.form-login div {
    margin-bottom: 10px;
}

/* Style for the form labels */
.form-login label {
    display: block;
    margin-bottom: 5px;
}

/* Style for the form inputs */
.form-login input[type="text"],
.form-login input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

/* Style for the login button */
.form-login button[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

/* Style for the login button when hovered */
.form-login button[type="submit"]:hover {
    background-color: #3e8e41;
}

/* Style for the register link */
.form-login a {
    display: block;
    text-align: center;
    margin-top: 10px;
    color: #4CAF50;
}

    </style>
</head>

<body>
    <div class="form-login">
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
        <button type="submit" name="submit">Login</button>
        </form>
      </div>
        <div>
          <label>Belum punya akun?</label>
      <a href="register.php"> Register </a>
    </div>
    </div>
</body>
</html>
