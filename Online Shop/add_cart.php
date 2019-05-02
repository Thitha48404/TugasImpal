<?php
	session_start();

	//check if product is already in the cart
	if(!in_array($_GET['id'], $_SESSION['cart'])){
		array_push($_SESSION['cart'], $_GET['id']);
		$_SESSION['message'] = '<script type="text/javascript">alert("Produk added to cart");</script> ';
	}
	else{
		$_SESSION['message'] = '<script type="text/javascript">alert("product already in cart");</script> ';
	}

	header('location: home.php');
?>