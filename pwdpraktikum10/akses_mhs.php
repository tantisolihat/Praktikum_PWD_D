<?php
$url = "http://localhost/Pemrogaman-Web-Dinamis/Pertemuan%2010/Langkah-langkah/getdatamhs.php";
$client = curl_init($url);
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
$response = curl_exec($client);
$result = json_decode($response);
foreach ($result as $r) {
    echo "<p>";
    echo "NIM : " . $r->nim . "<br />";
    echo "Nama : " . $r->namaMHS . "<br />";
    echo "jenis kel : " . $r->jkel . "<br />";
    echo "Alamat : " . $r->alamat . "<br />";
    echo "Tgl Lahir : " . $r->tgllhr . "<br />";
    echo "Asal_Sekolah : " . $r->asal__sekolah . "<br />";
    echo "</p>";
}
?>