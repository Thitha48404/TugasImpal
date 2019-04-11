<?php
	$conn = new mysqli('localhost', 'root', '', 'onlineshop');
 
	if(ISSET($_POST['save'])){
		if(!empty($_POST['nama_produk']) && !empty($_POST['harga_produk'])){
			$nama_produk = addslashes($_POST['nama_produk']);
			$harga_produk= $_POST['harga_produk'];
 
			$file = explode(".", $_FILES['foto_produk']['nama_produk']);
			$ext = array("png", "gif", "jpg", "jpeg");
 
			if(in_array($file[1], $ext)){
				$file_name = $file[0].'.'.$file[1];
				$tmp_file = $_FILES['foto_produk']['tmp_name'];
				$location = "img/".$file_name;
				$new_location = addslashes($location);
 
				if(move_uploaded_file($tmp_file, $location)){
					$conn->query("INSERT INTO `product` VALUES('', '$nama_produk', '$harga_produk', '$new_location')");
					echo "<script>alert('Data Insert')</script>";
					echo "<script>window.location = 'home-user.php'</script>";
				}
 
			}else{
				echo "<script>alert('File not available')</script>";
				echo "<script>window.location = 'home-user.php'</script>";
			}
 
		}else{
			echo "<script>alert('Please complete the required field!')</script>";
		}
 
 
	}
?>