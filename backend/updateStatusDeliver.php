<?php
include "../config/db.php";
$order_id = $_GET['order_id'];
$sql = "Update order_details set order_status='in_delivery' where order_id = '$order_id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location:../Admin/orderdisplayAdmin.php');
}else{
    echo('Failed');
}

?>