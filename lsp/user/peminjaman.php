<?php
include_once("../class/User.php");
include_once("../class/Peminjaman.php");
session_start();

$user = new User;
$data_user = $user->find($_SESSION["id"]);

$peminjaman = new Peminjaman;
$data_peminjaman = $peminjaman->find($_SESSION["id"]);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include("../partials/t_script_js.php") ?>
    <title>Riwayat Peminjaman</title>
    <style>
        /* Gaya untuk tabel */
table {
  border-collapse: collapse;
  width: 100%;
  margin-bottom: 20px;
}

th,
td {
  padding: 10px;
  text-align: center;
}

th {
  font-weight: bold;
  background-color: #555;
  color: #fff;
}

/* Gaya untuk baris ganjil */
tr:nth-child(odd) {
  background-color: #f2f2f2;
}


.tambah a {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
  border-radius: 5px;
}

.tambah a:hover {
  background-color: #3e8e41;
}

/* Gaya untuk tombol "Kembalikan Buku" */
.table a {
  background-color: #008CBA;
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
  border-radius: 5px;
}

.table a:hover {
  background-color: #006F8F;
  color: #fff;
}

    </style>
</head>

<body>
    <?php include("../partials/sidebar_user.php") ?>
    <br>
    <br>

<div class="col">
  <div class="card">
    <div class="card-body">
    <div class="table">
      <div class="tambah">
        <a href="form_peminjaman.php">Pinjam Buku</a>
      </div>
      <br>
        <h4>Riwayat Peminjaman</h4>
        <table id="jquery-tab">
            <thead>
                <tr>
                    <th>No</th>
                    <!-- <th>Nama Anggota</th> -->
                    <th>Judul Buku</th>
                    <th>Tanggal Peminjaman</th>
                    <!-- <th>Tanggal Pengembalian</th> -->
                    <th>Kondisi Buku Saat Dipinjam</th>
                    <!-- <th>Kondisi Buku Saat Dikembalikan</th> -->
                    <th>Denda</th>
                    <th>Aksi</th>
                </tr>
            </thead>

            <tbody>
                <?php foreach ($data_peminjaman as $key => $p) {
                ?>
                    <tr>
                        <td><?= $key + 1 ?></td>
                        <td><?= $p["judul"] ?></td>
                        <td><?= $p["tanggal_peminjaman"] ?></td>
                        <td><?= $p["kondisi_buku_saat_dipinjam"] ?></td>
                        <td><?= $p["denda"] ?></td>
                        <td>
                            <a href="form_pengembalian.php?id_buku=<?= $p["id_buku"] ?>&id_peminjaman=<?= $p["id_peminjaman"] ?>">Kembalikan Buku</a>
                        </td>
                    </tr>
                <?php  } ?>
            </tbody>
        </table>
    </div>
    </div>
  </div>
</div>

    <?php include("../partials/b_script_js.php") ?>
</body>

</html>