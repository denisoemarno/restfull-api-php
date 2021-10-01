<?php
      require_once('../config/koneksi_db.php');

      $data = json_decode(file_get_contents("php://input"));


      if ($data->id!=null) {
          $id               = $data->id;
          $nama_admin      = $data->nama_admin;
          $jenis_kelamin    = $data->jenis_kelamin;
          $email            = $data->email;
          $pass             = $data->password;
          $sql = $conn->prepare("UPDATE admin SET nama_admin=?, jenis_kelamin=?, email=?, password=? WHERE id=?");
          $sql->bind_param('ssssi', $nama_admin,$jenis_kelamin,$email,$pass,$id);  
          $sql->execute();
          if ($sql) {
              echo json_encode(array('RESPONSE' => 'SUCCESS'));
          }else{
            echo json_encode(array('RESPONSE' => 'FAILED'));
          }
      }else{
          echo "GAGAL";
      }

?>