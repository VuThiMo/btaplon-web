<?php
$email_phone = '';
if (isset($_SESSION['ss_admin_nhanvien'])) {

    $user = $db->get('account', array('id' => $_SESSION['ss_admin_nhanvien']));
    $theme = $db->get('theme', array('id' => $user[0]['idTheme']));
    $feeds = $db->get('feeds', array('idAccount' => $user[0]['id']));
    $email_phone = $user[0]['email_phone'];
}

// code up anh
if (isset($_POST['submit'])) {

    $uniquesavename=time().uniqid(rand());
    $hinhanhpath = basename($_FILES['upload_file']['name']);
    $target_dir = "/uploads/";
    $urlimage = $target_dir . $uniquesavename . $hinhanhpath ;
    $target_file = '.' . $urlimage ;
    

    if (move_uploaded_file($_FILES['upload_file']['tmp_name'], $target_file)) {
    }

    $contentPost = $_POST["tutorial"];

   $data_feeds= $db->insert('feeds', array(
        'content' => $contentPost,
        'urlimage' => $target_file,
        'idAccount' => $user[0]['id']
    ));
    $feeds=$db->get('feeds',array());
 
}


require_once('./view/V_website.php');
