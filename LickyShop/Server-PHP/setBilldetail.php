<?php
    include "connect.php";
    $json=$_POST['json'];
    $data=json_decode($json,true);
    foreach($data as $value){
        $idbill=$value['IdBILL'];
        $soluong=$value['amount'];
        $gia=$value['price'];
        $tongcong=$value['total'];
        $masp=$value['IdPro'];
        $query="INSERT INTO `billdetail`(`IdBillDetail`, `IdBill`, `Amount`, `Price`, `Total`, `IdPro`)
        VALUES (null,'$idbill','$soluong','$gia','$tongcong','$masp')";
        $run=mysqli_query($conn,$query);
    }
    if($run){
        echo 1;
    }
    else {
        echo 0;
    }
?>