<?php
      require_once('../config/koneksi_db.php');

      $data = json_decode(file_get_contents("php://input"));


      if ($data->id!=null) {
          $id               = $data->id;
          $nama_atasan      = $data->nama_atasan;
          $jenis_kelamin    = $data->jenis_kelamin;
          $noHp             = $data->noHp;
          $email            = $data->email;
          $pass             = $data->password;
          $sql = $conn->prepare("UPDATE atasan SET nama_atasan=?, jenis_kelamin=?, noHp=?, email=?, password=? WHERE id=?");
          $sql->bind_param('sssssi', $nama_atasan,$jenis_kelamin,$noHp,$email,$pass,$id);  
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