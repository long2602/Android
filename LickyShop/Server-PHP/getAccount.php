<?php
    include "connect.php";
    $query="SELECT * FROM `account`";
    $data=mysqli_query($conn,$query);

    $mangProduct = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangProduct,new product(
            $row['IdAccount'],
            $row['Username'],
            $row['APassword'],
            $row['Role'],
            $row['CreateDate'],
            $row['AImg'],
        ));
    }
    echo json_encode($mangProduct);
    class product{
        function product($IdAccount,$Username,$APassword, $Role, $CreateDate, $AImg){
            $this->IdAccount=$IdAccount;
            $this->Username=$Username;
            $this->APassword=$APassword;
            $this->Role=$Role;
            $this->CreateDate=$CreateDate;
            $this->AImg=$AImg;

        }
    }
    
?>