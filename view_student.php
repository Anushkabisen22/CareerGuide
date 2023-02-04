<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HTML and PHP code</title>
</head>

<body>
    <?php
include('conn.php');
$sql="select * from student ";
$res=mysqli_query($conn,$sql);
if(mysqli_num_rows($res) > 0)
{
}
else{
    $msg = "No Record found";
}
?>
    <h1>Student Record</h1>
    <table border="1px" style="width:600px; line-height:40px;">
        <thead>
            <tr>
                <th>Name</th>
                <th>Gender</th>
                <th>Phone no</th>
                <th>State</th>
            </tr>
        </thead>
        <tbody>
            <?php
                while($row = mysqli_fetch_assoc($res))
                {
                    ?>
            <tr>
                <td>
                    <?php echo $row['STUDENT_NAME']; ?>
                </td>
                <td>
                    <?php echo $row['STUDENT_GENDER']; ?>
                </td>
                <td>
                    <?php echo $row['STUDENT_PHONE']; ?>
                </td>
                <td>
                    <?php echo $row['STUDENT_STATE']; ?>
                </td>
            <tr>
                <?php
                }
                 ?>
        </tbody>
    </table>
</body>
</html>