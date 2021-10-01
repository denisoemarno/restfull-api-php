<?php
    require_once('../config/koneksi_db.php');

    if (isset($_POST['nama_driver']) && isset($_POST['jenis_kelamin']) && isset($_POST['noHp']) && isset($_POST['email'])&& isset($_POST['password'])) {
        $nama_atasan    = $_POST['nama_atasan'];
        $jenis_kelamin  = $_POST['jenis_kelamin'];
        $noHp           = $_POST['noHp'];
        $email          = $_POST['email'];
        $pass           = $_POST['password'];
        $sql            = $conn->prepare("INSERT INTO atasan (nama_atasan,jenis_kelamin,noHp,email,password)
                          VALUES (?,?,?,?,?)");
        $sql->bind_param('sssss', $nama_driver, $jenis_kelamin, $noHp, $email, $pass);
        $sql->execute();

        if ($sql) {
            echo json_encode(array('RESPONE' => 'SUCCESS'));
        }else{
            echo "GAGAL";
        }
    }

?>