<?php
include 'aksi/koneksi.php';
session_start(); // Pastikan session aktif
$cabang = $_GET['cabang'];
$levelLogin = $_SESSION['user_level']; // Ambil level login

// Database connection info
$dbDetails = array( 
    'host' => $servername, 
    'user' => $username, 
    'pass' => $password, 
    'db'   => $db
);

// DB table to use
$table = <<<EOT
 (
    SELECT 
      a.servis_id, 
      a.servis_kode,
      a.servis_nama,
      a.servis_biaya, 
      a.servis_kategori, 
      a.servis_status,
      a.servis_cabang,
      b.kategori_servis_id,
      b.kategori_servis_nama
    FROM servis a
    LEFT JOIN kategori_servis b ON a.servis_kategori = b.kategori_servis_id
 ) temp
EOT;

// Table's primary key
$primaryKey = 'servis_id';

// Array of database columns which should be read and sent back to DataTables
$columns = array(
    array('db' => 'servis_id', 'dt' => 0),
    array('db' => 'servis_kode', 'dt' => 1),
    array('db' => 'servis_nama', 'dt' => 2),
    array('db' => 'kategori_servis_nama', 'dt' => 3),
    array(
        'db'        => 'servis_biaya',
        'dt'        => 4,
        'formatter' => function ($d, $row) use ($levelLogin) {
            if ($levelLogin === 'admin') {
                return 'Anda tidak memiliki akses untuk melihat data ini';
            }
            return 'Rp. ' . number_format($d, 0, ',', '.');
        }
    ),
    array(
        'db'        => 'servis_status',
        'dt'        => 5,
        'formatter' => function ($d, $row) {
            return ($d == 1) ? 'Aktif' : 'Tidak Aktif';
        }
    )
);

// Include SQL query processing class
require 'aksi/ssp.php';

// Output data as JSON
echo json_encode(
    SSP::simple($_GET, $dbDetails, $table, $primaryKey, $columns, null, "servis_cabang = $cabang")
);
?>
