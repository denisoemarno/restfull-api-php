<?php
define('HOST','localhost');
define('USER', 'root');
define('DB', 'hajaraswad_db');
define('PASS','');
$conn = new mysqli(HOST,USER,PASS,DB) or die('Koneksi error');