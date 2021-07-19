<?php
    include "connect.php";
    $query="SELECT* 
    FROM  customer,bill
    WHERE customer.IdCus=bill.IdCust";
$data=mysqli_query($conn,$query);

$mangProduct = array();
while($row=mysqli_fetch_assoc($data)){
    array_push($mangProduct,new product(
        $row['IdCus'],
        $row['FullName'],
        $row['DOB'],
        $row['Gender'],
        $row['Email'],
        $row['Phone'],
        $row['IdBill'],
        $row['BDateTime'],
        $row['Total'],
        $row['Payment'],
        $row['Messenger'],
    ));
}
echo json_encode($mangProduct);
class product{
    function product($IdCus,$FullName,$DOB, $Gender, $Email, $Phone,$IdBill,$BDateTime,$Total, $Payment, $Messenger){
        $this->IdCus=$IdCus;
        $this->FullName=$FullName;
        $this->DOB=$DOB;
        $this->Gender=$Gender;
        $this->Email=$Email;
        $this->Phone=$Phone;
        $this->IdBill=$IdBill;
        $this->BDateTime=$BDateTime;
        $this->Total=$Total;
        $this->Payment=$Payment;
        $this->Messenger=$Messenger;
    }
}
?>