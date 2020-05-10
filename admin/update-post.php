<?php
include "header.php";
require_once 'data/data.php';

    $post_id= $_GET['post'];
    $sql1 = "select * from post join user on post.author = user.user_id join category on post.category = category.c_id where post.p_id= $post_id ";
    $result= Data::query($sql1);
    $rs= mysqli_fetch_assoc($result);

    $sql2="select * from category";
    $result2= Data::query($sql2);

// update post


if(isset($_POST['submit'])){
        $title = mysqli_real_escape_string(Data::conn(), $_POST['post_title']);
        $post_desc = mysqli_real_escape_string(Data::conn(),$_POST['postdesc']);
        $p_date= date("d M, Y");
        $category= $_POST['category'];
        $user_id= $_SESSION['user_id'];

    $error= [];

    if(!empty($_FILES['save_img']['name'])){
        if($_FILES['save_img']['name']== $rs['p_image']){
            $file_name= $rs['p_image'];
        }else{
            $file= $_FILES['save_img'];
        
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
            move_uploaded_file($file_tmp, 'upload/'.$file_name);
        }

    }else{
         $file_name= $rs['p_image'];
    }

    if(!empty($error)){
        print_r($error);
        die();
     }


    $sql= "update post set p_title='$title', p_desc='$post_desc', p_date='$p_date', p_image='$file_name', category='$category', author='$user_id' where p_id= $post_id";

    if(Data::query($sql)){
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
        <h1 class="admin-heading">Update Post</h1>
    </div>
    <div class="col-md-offset-3 col-md-6">
        <!-- Form for show edit-->
        <form action="" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="form-group">
                <input type="hidden" name="post_id"  class="form-control" value="1" placeholder="">
            </div>
            <div class="form-group">
                <label for="exampleInputTile">Title</label>
                <input type="text" name="post_title"  class="form-control" id="exampleInputUsername" value="<?php echo $rs['p_title']?>">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1"> Description</label>
                <textarea name="postdesc" class="form-control"  required rows="5">
                    <?php echo $rs['p_desc']?>
                </textarea>
            </div>
            <div class="form-group">
                <label for="exampleInputCategory">Category</label>
                <select class="form-control" name="category">
                    <?php
                        while($rs2= mysqli_fetch_assoc($result2)){
                           if($rs2['c_id']== $rs['category']){
                            echo "<option value='".$rs2['c_id']."' selected>".$rs2['c_name']."</option>";
                           }else{
                             echo "<option value='".$rs2['c_id']."'>".$rs2['c_name']."</option>";
                           }
                        }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="">Post image</label>
                <input type="file" name="save_img">
                <img  src="upload/<?php echo $rs['p_image']?>" height="150px">
                <input type="hidden" name="old-image" value="">
            </div>
            <input type="submit" name="submit" class="btn btn-primary" value="Update" />
        </form>
        <!-- Form End -->
      </div>
    </div>
  </div>
</div>
<?php include "footer.php"; ?>
