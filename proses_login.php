<?php
session_start();
include 'config/connect.php';
$username = $_POST['username'];
$password = $_POST['password'];


//$query = "SELECT * FROM siswa WHERE username= '$username' AND password= '$password'";
$query = mysqli_query($is_connect, "SELECT * FROM siswa WHERE username= '".$username."' AND password= '".$password."'" );
$data = mysqli_fetch_assoc($query);


if (NULL !=$data){
    $_SESSION['id'] = $data['id'];
    $_SESSION['username'] = $username;
    header('Location: index.php');
} else {
    echo 'Login gagal!';
    echo '<a href="login.php">Kembali</a>';
}


?>
