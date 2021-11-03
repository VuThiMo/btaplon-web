<?php 
$template = '';
foreach ($theme as $key => $value) {
  $template = $value['content'];
}

if (isset($_POST['submit'])) {
  $nameImagePath =  $hinhanhpath;
  
  $imgBlock = "<br><img src='" . $target_file . "' width='300'>";

 
  
  

  $content = $nameImagePath . $imgBlock;

  $template = str_replace("###Content", $content, $template);
  echo $contentPost;
  

}


$template = str_replace("###Email_phone", $email_phone, $template);




echo $template;



?>





  


