<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>form {
  margin: 20px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f6f6f6;
}

table {
  border-collapse: collapse;
  margin-bottom: 10px;
}

td {
  padding: 10px;
  text-align: left;
}

input[type="text"], select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-sizing: border-box;
  margin-bottom: 10px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

.placeholder {
  color: #ccc;
}

.error {
  color: red;
  font-size: 0.8em;
  margin-top: 5px;
}
</style>
</head>
<body>
    
<form action="class/Register.php" method="post">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" placeholder="Masukan username"></td>
        </tr>
		<tr>
            <td>Password</td>
            <td><input type="text" name="password" placeholder="Masukan password"></td>
        </tr>
        <tr>
            <td>Role</td>
            <td><option value="user">user</option></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="tambah" value="Tambah Buku"></td>
        </tr>
    </table>
</form>
</body>
</html>