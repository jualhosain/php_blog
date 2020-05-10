<?php
include "header.php"; 
require_once "data/data.php";

Data::user_r($_SESSION);

$user_id = $_GET['id'];
$sql = "select * from user where user_id = $user_id";
$result = Data::query($sql);
$rs = mysqli_fetch_assoc($result);

// update query

if(isset($_POST['submit'])){
    $fname = mysqli_real_escape_string(Data::conn(), $_POST['fname']);
    $lname = mysqli_real_escape_string(Data::conn(),$_POST['lname']);
    $user= mysqli_real_escape_string(Data::conn(),$_POST['user']);
    $role=mysqli_real_escape_string(Data::conn(),$_POST['role']);

    if( $rs['user_name'] == $user){
        $sql1= "update user set first_name ='$fname', last_name='$lname', user_name ='$user', role= '$role' where user_id = '$user_id'";
       $output= Data::query($sql1);
       header('location: users.php');
    }else{
        $sql = "select user_name from user where user_name = '{$user}'";
        $result = Data::query($sql);

        if(mysqli_num_rows($result) > 0){
        echo $user_already= '<h3 class="text-center text-danger">User Name already Existed</h3>';
        }else{
            $sql2= "insert into user (first_name, last_name, user_name, role) values ('$fname','$lname', '$user','$role')";
            $rs= Data::query($sql2);
            header('location: users.php');
        }
    }
    
}

?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Modify User Details</h1>
              </div>
              <div class="col-md-offset-4 col-md-4">
                  <!-- Form Start -->
                  <form  action="" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="user_id"  class="form-control" value="1" placeholder="" >
                      </div>
                          <div class="form-group">
                          <label>First Name</label>
                          <input type="text" name="fname" class="form-control" value="<?php echo $rs['first_name']?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" name="lname" class="form-control" value="<?php echo $rs['last_name']?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>User Name</label>
                          <input type="text" name="user" class="form-control" value="<?php echo $rs['user_name']?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>User Role</label>
                          <select class="form-control" name="role" value="<?php echo $row['role']; ?>">
                              <?php
                              
                             if($rs['role']== 0){
                               echo "<option value='0' selected>normal User</option><option value='1'>Admin</option>";
                             }else{
                                echo "<option value='0'>normal User</option><option value='1' selected>Admin</option>";
                             }
                              ?>
                          </select>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>
                  <!-- /Form -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
