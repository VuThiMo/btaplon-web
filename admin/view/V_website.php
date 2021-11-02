<?php foreach ($theme as $key => $value) {?>
                                    <td><?php echo $value ['content'] ?></td>


<?php  } ?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<body>

    <br><br><br><br><br><br>

 <form  action="?controller=website" enctype="multipart/form-data" method="POST" >
<h3>chọn hình ảnh</h3>
<input type="file" name="upload_file">
  <input type="submit" value="Upload " name="submit">



</form>
<?php
if(isset($_POST['submit'])){
echo "<br>hình ảnh là:".$hinhanhpath;
echo"<br><img src='".$target_file. "' width='300'>";
}
?>

</body>
</html>

     

   
   








 
   