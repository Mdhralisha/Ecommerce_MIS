<?php
include "../config/db.php";

    $query = "select username from customer_details";
    $query_result = mysqli_query($conn,$query);


$customer_name = $_POST['customer_name'];
$address = $_POST['address'];
$username = $_POST['username'];
$password = $_POST['password'];
$contact = $_POST['contact'];

$hashed_password = password_hash($password,PASSWORD_BCRYPT);


$available_status = 0;
    while($row=mysqli_fetch_assoc($query_result)){
        if($username==$row['username']){
            $available_status=1;
            break;
        }
    }

    if($available_status==0){

$sql = "INSERT INTO customer_details(customer_name,address,contact_no,username,password)values('$customer_name','$address','$contact','$username','$hashed_password')";

$result = mysqli_query($conn,$sql);

if($result){
header('location:../userLogin.php');
}
}
   else{
        header('location:../userSignUp.php?condition="failed');
    }

?>