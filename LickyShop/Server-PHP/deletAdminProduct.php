<?php
    include "connect.php";
    $id=(int)$_POST['idproduct'];
    $query1="DELETE FROM `product` WHERE IdProduct=$id";
    $query2="DELETE FROM `image` WHERE IdProduct=$id";
    $query3="DELETE FROM `sizeandinventory` WHERE IdProduct=$id";
    if(mysqli_query($conn,$query3)){
        if(mysqli_query($conn,$query2)){
            if(mysqli_query($conn,$query1)){
                echo 1;
            }
            else{
                echo 0;
            }
        }
        else{
            echo 0;
        }
    }
    else{
        echo 0;
    }
?>