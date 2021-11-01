<?php
if(isset($_POST['btn_add'])){
	$email_phone = $_POST['email_phone'];
	$password=$_POST['password'];
	


	$id=1;
	$data_web=$db->get('website',array());
	foreach ($data_web as $key => $value) {
		$id +=$value['id'];
	}
	// oder_detail
	
		$db->insert('website',array(
			'id'=>$id,
			'email_phone'=>$value['email_phone']
		
		
			
		));
		// code...
	
	//oder
$data_add=$db->get('account',array('id'));

 
$db->insert('account',array(
	'id'=>$id,
	'email_phone'=>$email_phone,
	'password'=>$password,
	'role'=>'user'


));


}

header('location:?controller=trang_chu');

?>