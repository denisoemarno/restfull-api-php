<?php
    require_once('../config/koneksi_db.php');

    if (isset($_POST['nama_cust']) && isset($_POST['alamat']) && isset($_POST['longtitude']) && isset($_POST['latitude'])) {
       $nama_cust           = $_POST['nama_cust'];
       $alamat              = $_POST['alamat'];
       $longtitude          = $_POST['longtitude'];
       $latitude            = $_POST['latitude'];
       $sql                 = $conn->prepare("INSERT INTO customer (nama_cust,alamat,longtitude,latitude)
                            VALUES (?,?,?,?)");
       $sql->bind_param('ssdd', $nama_cust, $alamat, $long, $lat);
       $sql->execute();

       if ($sql) {
        echo json_encode(array('RESPONE' => 'SUCCESS'));
       }else{
           echo "GAGAL";
       }

    }
?>