<?php 

include 'config/connect.php';

$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM siswa WHERE username='$username' AND password='$password'";
$result = mysqli_query($is_connect, $query);

if(mysqli_num_rows($result) > 0){
    session_start();
    $_SESSION['username'] = $username;
    header('Location: index.php');
} else {
    echo 'Login gagal cek kembali username atau password';
}

?>