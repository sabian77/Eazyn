<?php 

include 'config/connect.php';

$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM siswa WHERE username='$username' AND password='$password'";
$result = mysqli_query($is_connect, $query);

<<<<<<< HEAD
$data = mysqli_fetch_assoc($result);

if(mysqli_num_rows($result) > 0){
=======
if(null !=$data['id']){
>>>>>>> d77ce7b09f4faeb6985936aeacd86c3f59625aad
    $_SESSION['id'] = $data['id'];
    $_SESSION['username'] = $username;

    header('Location:index.php');
} else {
    echo 'Login gagal cek kembali username atau password';
<<<<<<< HEAD
    echo "<a href='login.php'>Kembali</a>";
=======
    echo "<a href='login.php'>kembali</a>";
>>>>>>> d77ce7b09f4faeb6985936aeacd86c3f59625aad
}

?>