<?php
    include "connect.php";
    mysqli_set_charset($conn,'utf8');
    $response = array();
    $check=true;
	$username = $_POST['username'];
	$password = $_POST['password'];
	$phone = $_POST['phone'];
    $name=$_POST['name'];

    // $username = "long";
	// $password = "123";
	// $phone = "741258963";
    // $name= "long ng";
    $date= date("Y-m-d");
    //kt username va sđt
    $sqlCheck1 = "SELECT * FROM account WHERE Username = '$username';";
    $sqlCheck2 ="SELECT * FROM customer WHERE Phone='$phone';";
    
    $result1 = mysqli_query($conn,$sqlCheck1);
    $result2 = mysqli_query($conn,$sqlCheck2);

    $gt1 = mysqli_num_rows($result1);
    $gt2 = mysqli_num_rows($result2);
    if($gt1!=0)
    {
        $check=false;
    }
    if($gt2!=0){
        $check=false;
    }
    if($check==false){
        $response["success"] = 0;
		$response["message"] = "Tên đăng nhập hoặc số điện thoại đã có người sử dụng!";
    }
    else{
        
        $queryCus="INSERT INTO `customer`(`IdCus`, `FullName`, `DOB`, `Gender`, `Email`, `Phone`) 
        VALUES (null,'$name',null,null,null,'$phone')";
        if(mysqli_query($conn,$queryCus)){
            $idcus=$conn->insert_id;

            $query1="INSERT INTO `address`(`IdAddress`, `Number`, `SubDistrict`, `District`, `City`) 
            VALUES (null,null,null,null,null)";
            if(mysqli_query($conn,$query1)){
                $idaddress=$conn->insert_id;
                
                //add cả id khách hàng với id địa chỉ vào bảng
                $query2="INSERT INTO `cusandandress`(`IdCus`, `IdAdd`, `Title`) 
                VALUES ('$idcus','$idaddress','Địa chỉ nơi ở')";
                if(mysqli_query($conn,$query2)){

                    $queryAccount="INSERT INTO `account`(`IdAccount`, `Username`, `APassword`, `Role`, `CreateDate`,`AImg`)
                    VALUES ('$idcus','$username','$password','admin','$date',null)";
                    $resultInsert=mysqli_query($conn,$queryAccount);
                    if($resultInsert){
                        $response["success"] = 1;
                        $response["message"] = "Đăng ký Thành công!";
                        $response["user_name"]=$username;
                        $response["phone"]=$phone;
                    }else{
                        $response["success"] = 0;
                        $response["message"] = "Đăng ký thất bại!";
                    }
                }
            }
        }

    }
    echo json_encode($response);
?>