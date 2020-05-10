<?php
include "header.php";
require_once 'data/data.php';

if(isset($_POST['submit'])){

        $title = mysqli_real_escape_string(Data::conn(), $_POST['post_title']);
        $post_desc = mysqli_real_escape_string(Data::conn(),$_POST['postdesc']);
        $p_date= date("d M, Y");
        $category= $_POST['category'];
        $user_id= $_SESSION['user_id'];

    $error= [];

    if(isset($_FILES['fileToUpload'])){
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

    }else{
        $error[]="Upload File has a problem";
    }

    if(!empty($error)){
        print_r($error);
        die();
     }

    move_uploaded_file($file_tmp, 'upload/'.$file_name);

    $sql= "insert into post (p_title, p_desc, p_date, p_image, category, author) values ('$title', '$post_desc','$p_date','$file_name','$category','$user_id');";
    $sql.="update category set post = (post+1) where c_id=$category";

    if(mysqli_multi_query(Data::conn(), $sql)){
        header('location: post.php');
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
                          <label for="post_title">Title</label>
                          <input type="text" name="post_title" class="form-control" autocomplete="off" required>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1"> Description</label>
                          <textarea name="postdesc" class="form-control" rows="5"  required></textarea>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Category</label>
                          <select name="category" class="form-control">
                              <option value="" disabled> Select Category</option>
                              <?php
                              $sql= "select * from category";
                              $result = Data::query($sql);
                              while($rs= mysqli_fetch_assoc($result)){
                              ?>
                                <option value="<?php echo $rs['c_id']; ?>" selected> <?php echo $rs['c_name']; ?></option>
                              <?php } ?>
                          </select>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Post image</label>
                          <input type="file" name="fileToUpload" required>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Save" required />
                  </form>
                  <!--/Form -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
