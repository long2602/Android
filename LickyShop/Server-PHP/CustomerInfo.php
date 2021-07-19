<?php
    include "connect.php";
    $fullname=$_POST['tenkhachhang'];
    $phone=$_POST['sodienthoai'];
    $address=$_POST['diachi'];
    $country=$_POST['quocqia'];
    $city=$_POST['thanhpho'];
    $district=$_POST['quan'];
    $sub=$_POST['phuong'];
    if(strlen($fullname)>0 && strlen($phone)>0 && strlen($address)>0 && strlen($country)>0 && strlen($city)>0 && strlen($district)>0 && strlen($sub)>0){
        $query="INSERT INTO `customer`(`IdCus`, `FullName`, `DOB`, `Gender`, `Email`, `Phone`) VALUES (null,'$fullname',null,null,null,'$phone')";
        if(mysqli_query($conn,$query)){
            $idcus=$conn->insert_id;
            
            // id của địa chỉ
            $query1="INSERT INTO `address`(`IdAddress`, `Number`, `SubDistrict`, `District`, `City`) VALUES (null,'$address','$sub','$district','$city')";
            if(mysqli_query($conn,$query1)){
                $idaddress=$conn->insert_id;
                
                //add cả id khách hàng với id địa chỉ vào bảng
                $query2="INSERT INTO `cusandandress`(`IdCus`, `IdAdd`, `Title`) VALUES ('$idcus','$idaddress','Địa chỉ nơi ở')";
                if(mysqli_query($conn,$query2)){
                    echo $idcus;
                }
            }
        }
        else{
            echo "thất bại";
        }
    }
    else{
        echo "Bạn hãy kiểm tra lại các dữ liệu";
    }
?>