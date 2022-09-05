<?php
session_start();
include('includes/dbconnection.php');


if(isset($_POST['delete_btn']))
{
	$id = $_POST['delete_id'];

	$query = "DELETE FROM users WHERE id='$id'";
	$query_run = mysqli_query($con, $query);
	if($query_run)
	{
		$_SESSION["success"] = "Your Data is DELETED";
		header('location: user-detail.php');

	}else{
		$_SESSION["status"] = "Your Data is not is DELETED";
		header('location: user-detail.php');

	}
}
?>