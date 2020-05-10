<?php 
    include "header.php";
    require_once "data/data.php";

    Data::user_r($_SESSION);


    $c_id= $_GET['id'];
    $sql = "select * from category where c_id =$c_id";
    $result = Data::query($sql);
    $rs = mysqli_fetch_assoc($result);
    if(isset($_POST['submit'])){
         $c_name = $_POST['cat_name'];
        if($c_name == $rs['c_name']){
                $sql3= "update category set c_name = '$c_name' where c_id = $c_id";
                Data::query($sql3);
                header("location: category.php");
        }else{
            $sql1= "select * from category where c_name = '$c_name'";
            $result= Data::query($sql1);
            if(mysqli_num_rows($result) > 0){
                echo $existed_cat= "Category Name already Existed";
            }else{
                $sql2= "update category set c_name = '$c_name' where c_id = $c_id";
                Data::query($sql2);
                header("location: category.php");
            }
        }
    }
?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="adin-heading"> Update Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <form action="" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="cat_id"  class="form-control" value="1" placeholder="">
                      </div>
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat_name" class="form-control" value="<?php echo $rs['c_name'];?>"  placeholder="" required>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>
                </div>
              </div>
            </div>
          </div>
<?php include "footer.php"; ?>
