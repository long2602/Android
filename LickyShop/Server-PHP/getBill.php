<?php
    include "connect.php";
    $id=$_GET['page'];
    $query="SELECT * FROM bill WHERE IdCust=$id";
    $data=mysqli_query($conn,$query);
    
    $mangNewProduct = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangNewProduct,new newproduct(
            $row['IdBill'],
            $row['IdCust'],
            $row['BDateTime'],
            $row['Total'],
            $row['Payment'],
            $row['Messenger']
        ));
    }
    echo json_encode($mangNewProduct);
    class newproduct{
        function newproduct($IdBill,$IdCust,$BDateTime, $Total, $Payment, $Messenger){
            $this->IdBill=$IdBill;
            $this->IdCust=$IdCust;
            $this->BDateTime=$BDateTime;
            $this->Total=$Total;
            $this->Payment=$Payment;
            $this->Messenger=$Messenger;
        }
    }
?>