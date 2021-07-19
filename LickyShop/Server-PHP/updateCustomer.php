<?php
    include "connect.php";
    $id=(int)$_POST['id1'];
    $fullname=$_POST['name1'];
    $dateDE = $_POST['date1'];
    $date = date($dateDE);
    $mail=$_POST['mail1'];
    $gender=$_POST['sex1'];

    // $id=(int)"38";
    // $fullname="nhi";
    // $time = strtotime('26-02-2000');
    // $date = date('Y-m-d',$time);
    // $mail="long@mail";
    // $gender="nam";


    $query="UPDATE `customer` SET `FullName`='$fullname',`DOB`='$date',`Gender`='$gender',`Email`='$mail' WHERE IdCus=$id";
    if(mysqli_query($conn,$query)){
        echo 1;
    }else{
        echo 0;
    }
?>