<?php
    include "connect.php";
    $id=40;
    while($id<=48)
    {
        $sql="INSERT INTO `sizeandinventory`(`IdSize`, `Title`, `Amount`, `IdProduct`) VALUES (null,'Free size',15,$id)";
        if(mysqli_query($conn,$sql)){
            $id+=1;
        }
        else echo 0;
    }