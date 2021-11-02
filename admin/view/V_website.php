<?php foreach ($theme as $key => $value) {?>
                                    <td><?php echo $value ['content'] ?></td>


<?php  } ?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../css/website.css">
    <title></title>

</head>

<body>

    <br><br><br><br><br><br>

 <form  action="?controller=website" enctype="multipart/form-data" method="POST" >
<h3> Viết blog</h3>
<!-- <input  type="text-area" style=" margin-left: 50%;" placeholder="bạn đang nghĩ gì "> -->
<textarea id="tutorial" name="tutorial" rows="5" cols="40"  placeholder="bạn đang nghĩ gì "></textarea>
<br>
<input type="file" name="upload_file" >
  <input type="submit" value="Upload " name="submit" style=" background-color: rgb(0, 81, 255); color: cornsilk; ">
  



</form>
<?php
if(isset($_POST['submit'])){
echo "<br>hình ảnh là:".$hinhanhpath;
echo"<br><img src='".$target_file. "' width='300'>";
}
?>

</body>
</html>

     

   
   








 
   