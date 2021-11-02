<?php foreach ($theme as $key => $value) {?>
                                    <td><?php echo $value ['content'] ?></td>


<?php  } ?>


<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/website.css">
    <title></title>

</head>

<body>
<div class="container" style="background-color: rgb(236, 229, 200);">
    <br><br><br><br><br>

 <form  action="?controller=website" enctype="multipart/form-data" method="POST" >
 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
</svg>
<h3 style =" text-align: center; color:red"> Viết blog</h3>
<div class="giua" style =" justify-content: center;">
<textarea id="tutorial" name="tutorial" rows="5" cols="45"  placeholder="bạn đang nghĩ gì "></textarea>
<br>
<input type="file" name="upload_file" >
  <input type="submit" value="Upload " name="submit" style=" background-color: rgb(0, 81, 255); color: cornsilk; ">
  
</form>
</div>
<?php
if(isset($_POST['submit'])){
echo "<br>hình ảnh là:".$hinhanhpath;
echo"<br><img src='".$target_file. "' width='300'>";
}
?>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>

     

   
   








 
   