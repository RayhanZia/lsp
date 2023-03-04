<?php

class Database{

    private $server = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "perpustakaan";

    protected $db;

    public function __construct(){
        $this->db = mysqli_connect($this->server, $this->username, $this->password, $this->database);
    }
}

?>