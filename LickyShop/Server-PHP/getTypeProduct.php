<?php
    include "connect.php";
    $query="SELECT * FROM type";
    $data=mysqli_query($conn,$query);
    $mangType = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangType,new type(
            $row['IdType'],
            $row['Title']
        ));
    }
    echo json_encode($mangType);
    class type{
        function type($IdType, $Title){
            $this->IdType=$IdType;
            $this->Title=$Title;
        }
    }
?>