<?php
session_start();
session_destroy();
echo "Anda telah sukses keluar sistem <b>LOGOUT</b>";
echo "<br><br><a href='form_login.php'>Login User</a>";
