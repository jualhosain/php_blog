<?php
include "header.php";
require_once 'data/data.php';



$sql3= "select * from setting";
$result3= Data::query($sql3);
$rs= mysqli_fetch_assoc($result3);


if(isset($_POST['submit'])){

        $web_name = mysqli_real_escape_string(Data::conn(), $_POST['web_name']);
        $web_footer = mysqli_real_escape_string(Data::conn(),$_POST['footer_desc']);

    $error= [];

    if(!empty($_FILES['fileToUpload']['name'])){
        if($_FILES['fileToUpload']['name']== $rs['web_logo']){
            $file_name= $rs['web_logo'];
        }else{
            $file= $_FILES['fileToUpload'];
        
            $file_name= $file['name'];
            $file_type= $file['type'];
            $file_size= $file['size'];
            $file_tmp= $file['tmp_name'];
            $file_ext=strtolower(pathinfo($file_name)['extension']);
            $extention= ['jpeg','jpg','png'];
   
            if(in_array($file_ext, $extention)== false){
                $error[]= "Please Upload in this formate of image (jpeg, jpg , png) ";
            }
            if($file_size >= 2097152){
                $error[]="please Upload less 2Mb file ";
            }
            move_uploaded_file($file_tmp, '../images/'.$file_name);
        }

    }else{
         $file_name= $rs['web_logo'];
    }

    if(!empty($error)){
        echo "Something error ! <br> Please try agin";
        die();
     }


    echo $sql= "update setting set web_name = '$web_name', web_logo='$file_name', web_footer='$web_footer'";

    if(Data::query($sql)){
        header('location: setting.php');
    }else{
        echo "query failed";
    }
   
}



?>
  <div id="admin-content">
      <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <h1 class="admin-heading">Add New Post</h1>
             </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form -->
                  <form  action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                          <label for="web_name">Website Name</label>
                          <input type="text" name="web_name" value="<?php echo trim($rs['web_name']); ?>" class="form-control" autocomplete="off" required>
                      </div>

                      <div class="form-group">
                          <label for="idTwo">Website Logo</label>
                          <input type="file" name="fileToUpload" id='idTwo'>
                          <input type="text" name="old_logo" value="<?php echo $rs['web_log']?>" hidden>
                          <img src="../images/<?php echo trim($rs['web_logo']);?>" height="120px">
                      </div>

                    <div class="form-group">
                        <label for="fortext"> Footer</label>
                        <textarea name="footer_desc" class="form-control" id="fortext" required rows="3"><?php echo trim($rs['web_footer']);?></textarea>
                    </div>

                      <input type="submit" name="submit" class="btn btn-primary" value="Save" required />
                  </form>
                  <!--/Form -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
