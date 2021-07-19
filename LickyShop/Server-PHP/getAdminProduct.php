<?php
    include "connect.php";
    $query="SELECT type.IdType, product.IdProduct, image.IdImage, sizeandinventory.IdSize, type.Title, product.Name,product.Imei,product.Description,product.price,image.Image,sizeandinventory.STitle,sizeandinventory.Amount
    FROM product,type,image,sizeandinventory
    WHERE product.IdProduct=image.IdProduct AND type.IdType=product.IdType AND product.IdProduct=sizeandinventory.IdProduct";
$data=mysqli_query($conn,$query);

$mangProduct = array();
while($row=mysqli_fetch_assoc($data)){
    array_push($mangProduct,new product(
        $row['IdType'],
        $row['IdProduct'],
        $row['IdImage'],
        $row['IdSize'],
        $row['Title'],
        $row['Name'],
        $row['Imei'],
        $row['Description'],
        $row['price'],
        $row['Image'],
        $row['STitle'],
        $row['Amount'],
    ));
}
echo json_encode($mangProduct);
class product{
    function product($IdType,$IdProduct,$IdImage, $IdSize, $Title, $Name,$Imei,$Description,$price, $Image, $STitle, $Amount){
        $this->IdType=$IdType;
        $this->IdProduct=$IdProduct;
        $this->IdImage=$IdImage;
        $this->IdSize=$IdSize;
        $this->Title=$Title;
        $this->Name=$Name;
        $this->Imei=$Imei;
        $this->Description=$Description;
        $this->price=$price;
        $this->Image=$Image;
        $this->STitle=$STitle;
        $this->Amount=$Amount;
    }
}
?>