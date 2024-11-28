<?php
$config = [
    'server' => 'ep-raspy-leaf-a1ogsg7r-pooler.ap-southeast-1.aws.neon.tech',
    'username' => 'default',
    'password' => 'qo9mMNHRySQ8',
    'database' => 'verceldb',
    'port' => '5432',
    'sslmode' => 'require',
];

// Membuat string koneksi
$conn_string = "host={$config['server']} port={$config['port']} dbname={$config['database']} user={$config['username']} password={$config['password']} sslmode={$config['sslmode']}";

// Koneksi ke PostgreSQL
$dbconn = pg_connect($conn_string);

if (!$dbconn) {
    echo "Koneksi gagal!";
} else {
    echo "Koneksi berhasil!";
}
?>
