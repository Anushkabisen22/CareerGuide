<!DOCTYPE html>
<html lang="en">
<style>    
table, th, td {    
border: 1px solid black;  
margin-left: auto;  
margin-right: auto;  
border-collapse: collapse;    
width: 500px;  
text-align: center;  
font-size: 15px;  
}    
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HTML and PHP code</title>
</head>

<body>
    
    <?php
include('conn.php');
$rank=$_POST['rank'];
$sql="select * from college,branch where college.college_id=branch.college_id and BRANCH_CUTOFF>=$rank ORDER BY BRANCH_CUTOFF ASC";
$res=mysqli_query($conn,$sql);
if(mysqli_num_rows($res) > 0)
{
}
else{
    $msg = "No Record found";
}
?>
    <h1 align="center">College List</h1>
    <div class="new" >
    <table border="1px" style="width:600px; line-height:40px;">
        <thead>
            <tr>
                <th>College Id</th>
                <th>College Name</th>
                <th>State</th>
                <th>Branch ID</th>
                <th>Branch Name</th>
                <th>Cutoff</th>
            </tr>
        </thead>
        <tbody>
            <?php
                while($row = mysqli_fetch_assoc($res))
                {
                    ?>
            <tr>
                <td>
                    <?php echo $row['COLLEGE_ID']; ?>
                </td>
                <td>
                    <?php echo $row['COLLEGE_NAME']; ?>
                </td>
                <td>
                    <?php echo $row['COLLEGE_STATE']; ?>
                </td>
                <td>
                    <?php echo $row['BRANCH_ID']; ?>
                </td>
                <td>
                    <?php echo $row['BRANCH_NAME']; ?>
                </td>
                <td>
                    <?php echo $row['BRANCH_CUTOFF']; ?>
                </td>
            <tr>
                <?php
                }
                 ?>
        </tbody>
    </table>
            </div>
</body>
</html>