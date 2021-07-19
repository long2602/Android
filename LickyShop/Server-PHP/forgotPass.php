<?php
    include "connect.php";
    $phone=$_POST["phone"];
    $name=$_POST["username"];

    $headers = "From: long26022000@gmail.com" . "\r\n" .
    $sql="select APassword, Email from account join customer on account.IdAccount=customer.IdCus WHERE Username='$name' and Phone='$phone'";
    $result=mysqli_query($conn,$sql);
    $reponse=array();
    if(mysqli_num_rows($result)>0){
        echo 1;
    }
    else echo 0;
?>