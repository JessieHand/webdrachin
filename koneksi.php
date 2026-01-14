<?php
date_default_timezone_set('Asia/Jakarta');

$servername = "sql312.infinityfree.com";
$username = "if0_40855062";
$password = "tYwEBHHIUDmsovG";
$db = "if0_40855062_webdrachin"; //nama database

//create connection
$conn = new mysqli($servername,$username,$password,$db);

//check apakah ada error connection
if($conn->connect_error){
	//jika ada, hentikan script dan tampilkan pesan error
	die("Connection failed : ".$conn->connect_error);
}

//echo "Connected successfully<hr>";
?>