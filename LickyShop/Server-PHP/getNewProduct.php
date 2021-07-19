<?php
    include "connect.php";
    $query="SELECT product.IdProduct, product.Name,product.Imei,product.Description,product.IdType, product.price, image.Image, image.IdImage
    from product INNER JOIN image on product.IdProduct=Image.IdProduct ORDER BY IdProduct DESC Limit 6;";
    $data=mysqli_query($conn,$query);

    $mangNewProduct = array();
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangNewProduct,new newproduct(
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
    echo json_encode($mangNewProduct);
    class newproduct{
        function newproduct($IdProduct,$Name,$Imei, $Description, $IdType, $price,$Image,$IdImage){
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