<?php
echo $_POST['btn_add'];
if(isset($_POST['btn_add'])){
	$email_phone = $_POST['email_phone'];
	$password=$_POST['password'];
	$theme=$_POST['theme'];
	$website=$_POST['website'];

		$db->insert('account',array(
			'email_phone'=>$email_phone,
			'password'=>$password,
			'website'=>$website,
			'idTheme'=>$theme,
			'role'=>'user'
		));
		


		
}


		header('location:?controller=trang_chu');
	


?>
