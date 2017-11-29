<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
require "conn.php";
$data = json_decode(file_get_contents("php://input"));

if (isset($data->name) ){
	$name = $data->name; 
	$email = $data->email;	 
	$tel = $data->tel;
    $address = $data->address;
	$pass = $data->pass;
    $image = $data->image;
	$notes = $data->notes;
    $date_created = $data->date_created;
	$weburl = $data->weburl;
    $status = $data->status;
	 $city = $data->city;
	
        $sql = "INSERT INTO fearured (name, email, tel, address, pass, image, notes, date_created, weburl, status, city) VALUES ('$name','$email','$tel','$address','$pass','$image','$notes','$date_created','$weburl','$status','$city')";        
        
        if ($conn->query($sql) === TRUE) {
            echo 1;
        }
        else {
            //echo json_encode('failed');
            echo "Error: " . $sql . "<br>" . $conn->error;
        }       
        
 
}
 else {

	echo json_encode( "500");
}
?>
