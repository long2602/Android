<?php
    include "connect.php";
    $id=$_GET['page'];
    $query="SELECT * FROM billdetail WHERE IdBill=32";
    $data=mysqli_query($conn,$query);
    
    $mangNewProduct = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangNewProduct,new newproduct(
            $row['IdBillDetail'],
            $row['IdBill'],
            $row['Amount'],
            $row['Price'],
            $row['Total'],
            $row['IdPro']
        ));
    }
    echo json_encode($mangNewProduct);
    class newproduct{
        function newproduct($IdBillDetail,$IdBill,$Amount, $Price, $Total, $IdPro){
            $this->IdBillDetail=$IdBillDetail;
            $this->IdBill=$IdBill;
            $this->Amount=$Amount;
            $this->Price=$Price;
            $this->Total=$Total;
            $this->IdPro=$IdPro;
        }
    }
?>