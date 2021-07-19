<?php
    include "connect.php";
    $id=(int)$_POST['id'];
    $query="SELECT * FROM customer WHERE IdCus=$id";
    $data=mysqli_query($conn,$query);
    $mang = array();
    $row=mysqli_fetch_assoc($data);
    $mang["id"]=$row['IdCus'];
    $mang["name"]=$row['FullName'];
    $mang["date"]=$row['DOB'];
    $mang["sex"]=$row['Gender'];
    $mang["mail"]=$row['Email'];
    $mang["phone"]=$row['Phone'];
    echo json_encode($mang);
?>