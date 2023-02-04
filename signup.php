<?php
include('conn.php');
$name=$_POST['name'];
$email=$_POST['email'];
$username=$_POST['username'];
$password=$_POST['password'];
$contact=$_POST['contact'];
$zip=$_POST['zip'];
$gender=$_POST['gender'];
$state=$_POST['state'];
$row="INSERT INTO student(STUDENT_NAME,	STUDENT_EMAIL,STUDENT_USERNAME,STUDENT_PASSWORD,STUDENT_PHONE,STUDENT_STATE,STUDENT_ZIP,STUDENT_GENDER) VALUES ('$name','$email','$username','$password','$contact','$state','$zip','$gender')";
$row2="INSERT INTO master_student(S_EMAIL,S_PASSWORD) VALUES('$email','$password')";
$res=mysqli_query($conn,$row);
$res2=mysqli_query($conn,$row2);
if($res2==FALSE)
{
    echo "Email already in use";
}
else if($res == FALSE)
{
echo "Error in adding college";
}
else
{
echo "student added successfully";
}
?>
