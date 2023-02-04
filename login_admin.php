<?php
include('conn.php');
$email=$_POST['email'];
$pass=$_POST['password'];
$sql="select * from master_admin where a_email='$email' and a_password='$pass' ";
$res=mysqli_query($conn,$sql);
if($result=mysqli_fetch_assoc($res))
{
$_SESSION['a_email']=$result['a_email'];
header('location:home_Admin.html');
}
else
{
header('location:login_admin.html');
}
?>