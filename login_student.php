<?php
include('conn.php');
$email=$_POST['email'];
$pass=$_POST['password'];
$sql="select * from master_student where S_EMAIL='$email' and S_PASSWORD='$pass' ";
$res=mysqli_query($conn,$sql);
if($result=mysqli_fetch_assoc($res))
{
$_SESSION['S_EMAIL']=$result['S_EMAIL'];
header('location:home_student.html');
}
else
{
header('location:login_student.html');
}
?>