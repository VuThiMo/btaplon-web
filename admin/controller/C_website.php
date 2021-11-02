<?php
if(isset($_SESSION['ss_admin_nhanvien'])){

	
$user = $db->get('account', array('id'=>$_SESSION['ss_admin_nhanvien']));

$theme=$db->get('theme',array('id'=>$user[0]['idTheme']));


$feeds=$db->get('feeds',array('idAccount'=>$user[0]['id']));
	
}

if(isset($_POST['submit'])){
    $hinhanhpath=basename($_FILES['upload_file']['name']);
$target_dir = "./uploads/";
$target_file = $target_dir.$hinhanhpath;

if(move_uploaded_file($_FILES['upload_file']['tmp_name'],$target_file)){
    

}

}

require_once('./view/V_website.php');



?>

