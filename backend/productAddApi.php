<?php
include "../config/db.php";
$product_name = $_POST['productName'];
$product_price = $_POST['price'];
$product_image= $_POST['image'];

$filename = $product_image['name'];
$temp_name = $product_image['tmp_name'];
$file = '../uploads/' . $filename;
move_uploaded_file($temp_name, $file);

$sql = "INSERT INTO product_details(product_name,product_price,product_image)values('$product_name','$product_price','$filename')";

$result = mysqli_query($conn,$sql);

if($result){
    header('location:../Admin/productAdd.php');
}else{
    echo"failed";
}
?>