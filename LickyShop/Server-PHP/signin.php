<?php
    include "connect.php";
    $response=array();
    // $username=$_POST['username'];
    // $password=$_POST['password'];

    $username="long";
    $password="123456";
    $sqlCheck="SELECT * FROM account WHERE Username='$username' AND APassword='$password'";
    mysqli_query($conn,$sqlCheck);
    $result = mysqli_query($conn,$sqlCheck);
		if (mysqli_num_rows($result) != 0) {	
			$row = mysqli_fetch_assoc($result);
		
			$phone=$row['IdAccount'];
			$sqlphone="SELECT Phone FROM customer WHERE IdCus='$phone'";
			$result1 = mysqli_query($conn,$sqlphone);
			$sdt=mysqli_fetch_assoc($result1);
			$temp=$sdt['Phone'];
			
			$response["success"] = 1;
			$response["message"] = "Đăng nhập thành công!";
			$response["user_name"] = $row['Username'];
			$response["phone"] = $temp;
			$response["pass_word"] = $row['APassword'];
			$response["img"]=$row['AImg'];
			$response["id_cus"]=$phone;
		} else {	
			$response["success"] = 0;
			$response["message"] = "Tài khoản không tồn tại. Thử lại!";
		}	
			/**Return json*/
		echo json_encode($response);
?>