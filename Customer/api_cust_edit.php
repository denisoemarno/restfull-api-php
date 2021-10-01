<?php
      require_once('../config/koneksi_db.php');
      
      $data = json_decode(file_get_contents("php://input"));
      //$nama_cust['nama_cust'];

      if ($data->id!=null) {
          $id                   = $data->id;
          $nama_cust            = $data->nama_cust;
          $alamat               = $data->alamat;
          $longtitude           = $data->longtitude;
          $latitude             = $data->latitude;
          
          $sql = $conn->prepare("UPDATE customer SET nama_cust=?, alamat=?, longtitude=?, latitude=? WHERE id=?");
          $sql->bind_param('ssddi', $nama_cust,$alamat,$longtitude,$latitude,$id);  
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