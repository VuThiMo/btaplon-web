<?php foreach ($theme as $key => $value) {?>
  <table class="table">
      
     <td><?php echo $value ['content'] ?></td>
  
 </table>
     <?php  } ?> 
     <?php  echo '<h1>'. 'Xin Chào:'.$user[0]['email_phone'] .'<h1>';?>
     
  <?php foreach ($website as $key => $value) {?>
  <table class="table">
      
    
     <td><?php echo $value ['title'] ?></td>
 </table>
     <?php  } ?>


<?php foreach ($feeds as $key => $value) {?>
  <table class="table">
      
     <td><?php echo $value ['title'] ?></td>
      <td><?php echo $value ['content'] ?></td>
       <td><?php echo $value ['urlimage'] ?></td>
  
 </table>
     <?php  } ?>



<?php

	



?>