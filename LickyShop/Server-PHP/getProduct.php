<?php
    include "connect.php";
    $Idtype=$_GET['page'];
    $query="SELECT product.IdProduct, product.Name,product.Imei,product.Description,product.IdType, product.price, image.Image, image.IdImage
    from product INNER JOIN image on product.IdProduct=Image.IdProduct where IdType=$Idtype;";
    $data=mysqli_query($conn,$query);

    $mangProduct = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangProduct,new product(
            $row['IdProduct'],
            $row['Name'],
            $row['Imei'],
            $row['Description'],
            $row['IdType'],
            $row['price'],
            $row['Image'],
            $row['IdImage'],
        ));
    }
    echo json_encode($mangProduct);
    class product{
        function product($IdProduct,$Name,$Imei, $Description, $IdType, $price,$Image,$IdImage){
            $this->IdProduct=$IdProduct;
            $this->Name=$Name;
            $this->Imei=$Imei;
            $this->Description=$Description;
            $this->IdType=$IdType;
            $this->price=$price;
            $this->Image=$Image;
            $this->IdImage=$IdImage;
            
        }
    }
    
?>