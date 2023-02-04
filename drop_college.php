
<?php
include('conn.php');
$id=$_POST['id'];
$row="DELETE FROM COLLEGE WHERE COLLEGE_ID='$id' ";
$res=mysqli_query($conn,$row);
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <nav class="navbar navbar-light bg-info">
        <a class="navbar-brand" href="#">
            <img src="shikshalogo.jpg" width="50" height="50" class="d-inline-block align-center text-dark" alt="">
            <b>CareerGuide</b>
        </a>
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active text-dark" href="home.html">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark" href="home.html">Contact</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark" href="contact">SignUp</a>
            </li>
        </ul>
    </nav>
    <br><br><br>
    <h3 style="margin-left: 47%;">Drop College</h3>
    <br>
    <br>
    <p><?php
    if($res==TRUE)
    {
        echo "College Dropped Successfully";
    }
    else
    {
        echo "College is not in the list" ;
    }?>
    </p>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
</body>

</html>