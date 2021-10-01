<?php
    require_once('../config/koneksi_db.php');

    if (isset($_POST['nama_admin']) && isset($_POST['jenis_kelamin']) && isset($_POST['email']) && isset($_POST['password'])) {
       $nama_admin           = $_POST['nama_admin'];
       $jenis_kelamin        = $_POST['jenis_kelamin'];
       $email                = $_POST['email'];
       $pass                 = $_POST['password'];
       $sql                  = $conn->prepare("INSERT INTO admin (nama_admin,jenis_kelamin,email,password)
                            VALUES (?,?,?,?)");
       $sql->bind_param('ssss', $nama_admin, $jenis_kelamin, $email, $pass);
       $sql->execute();

       if ($sql) {
        echo json_encode(array('RESPONE' => 'SUCCESS'));
       }else{
           echo "GAGAL";
       }

    }
?>