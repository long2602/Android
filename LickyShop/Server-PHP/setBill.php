<?php
    include "connect.php";
    $IDCus=$_POST['idcustomer'];
    $date= date("Y-m-d");
    $total=$_POST['tong'];
    $payment="Thanh toán khi giao hàng (COD)";
    $query="INSERT INTO `bill`(`IdBill`, `IdCust`, `BDateTime`, `Total`, `Payment`, `Messenger`) VALUES (null,'$IDCus','$date','$total','$payment',null)";
    if(mysqli_query($conn,$query)){
        $idbill=$conn->insert_id;
        echo $idbill;
    }
    else{
        echo "fail";
    }
?>