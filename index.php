<?php
include "koneksi.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>filter tanggal </title>
</head>


<body>

<center>
<div class =" container">

<h1>Menampilkan Data dan Filter Data  </h1>

<br>
<!-- membuat filter data berdasarkan tanggal -->
<form method="post">
<table>

<tr>
<td>Dari Tanggal</td>
<td><input type="date" name="dari_tanggal" required="required"> </td>
<td>Sampai Tanggal</td>
<td><input type="date" name="sampai_tanggal" required="required"></td>
<td><input type="submit" class="btn btn-primary" name="filter" value="filter"></td>

</tr>

</table>
</form>
<!-- filter data berdasarkan tanggal -->


<br>

<!-- table menampilkan data  -->
</div>

<table  style= "width: 800px;"class ="table table-bordered">
<thead class="thead-dark">
<tr>
<th>No</th>
<th>Kode Barang</th>
<th>Nama Barang</th>
<th>Tanggal Masuk</th>
<th>Jumlah</th>
</tr>
</thead>
<!-- menampilkan data di database  -->

<?php
$no = 1;
if (isset($_POST['filter'])){
$dari_tanggal = mysqli_real_escape_string($koneksi,$_POST['dari_tanggal']);
$sampai_tanggal = mysqli_real_escape_string($koneksi, $_POST['sampai_tanggal']);
$tanggal = mysqli_query ($koneksi, "SELECT * FROM tbl_brg WHERE tgl_masuk BETWEEN '$dari_tanggal' AND '$sampai_tanggal'");
} else{
    $tanggal = mysqli_query ($koneksi, "SELECT * FROM tbl_brg ");
}

while ($tampil = mysqli_fetch_array($tanggal)){

?>

<tr>
<td><?=$no++; ?></td>
<td><?=$tampil['kode_brg']; ?></td>
<td><?=$tampil['nama_brg']; ?></td>
<td><?=$tampil['tgl_masuk']; ?></td>
<td><?=$tampil['jumlah']; ?></td>
</tr>

<?php } ?>

 </table>
</center>
    
</body>
</html>