<?php
    include "connect.php";
    $name=$_POST['name1'];
    $pass=$_POST['pass1'];

    // $id=(int)"38";
    // $fullname="nhi";
    // $time = strtotime('26-02-2000');
    // $date = date('Y-m-d',$time);
    // $mail="long@mail";
    // $gender="nam";


    $query="UPDATE `account` SET `APassword`='$pass' WHERE Username='$name'";
    if(mysqli_query($conn,$query)){
        echo 1;
    }else{
        echo 0;
    }
?>