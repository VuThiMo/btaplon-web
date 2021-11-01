<?php
if(isset($_SESSION['ss_admin_nhanvien'])){

	
$user = $db->get('account', array('id'=>$_SESSION['ss_admin_nhanvien']));
$website=$db->get('website',array('id'=>$_SESSION['ss_admin_nhanvien']));
$theme=$db->get('theme',array('id'=>$_SESSION['ss_admin_nhanvien']));
$feeds=$db->get('feeds',array('id'=>$_SESSION['ss_admin_nhanvien']));


	
}
require_once('./view/V_website.php');



?>

