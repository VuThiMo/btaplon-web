<?php
session_start();
// gọi file database vào
require('./model/database.php');
// khởi tạo đối tượng
$db = new database();

// kiểm tra trên url có biên controller ko?
if(isset($_GET['controller'])){
	// lấy giá trị của controller
	$controller=$_GET['controller'];
}
// nếu ko có về trang chủ
else{
	$controller='login';
}
switch ($controller) {
	case 'trang_chu':
		require_once('./controller/C_trang_chu.php');
		break;
		case 'login':
		require_once('./controller/C_login.php');
		break;
		case 'logout':
		require_once('./controller/C_logout.php');
		break;
		case 'add_account':
		require_once('./controller/C_add_account.php');
		break;
	    case 'addaccount':
		require_once('./controller/C_addaccount.php');
		break;
		 case 'xuli_admin':
		require_once('./controller/C_xuli_admin.php');
		break;
		case 'xuli':
		require_once('./controller/C_xuli.php');
		break;
	    case 'template':
		require_once('./controller/C_template.php');
		break;
		case 'xuli_template':
		require_once('./controller/C_xuli_template.php');
		break;
		case 'addtemplate':
		require_once('./controller/C_addtemplate.php');
		break;
		
		case 'add_template':
		require_once('./controller/C_add_template.php');
		break;
		case 'website':
		require_once('./controller/C_website.php');
		break;
		
	
	
	default:

		require_once('./view/V_login.php');
		break;
}


?>