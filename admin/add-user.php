<?php
include "header.php";
require_once 'data/data.php';

Data::user_r($_SESSION);

if(isset($_POST['save'])){
    $fname = mysqli_real_escape_string(Data::conn(), $_POST['fname']);
    $lname = mysqli_real_escape_string(Data::conn(),$_POST['lname']);
    $user= mysqli_real_escape_string(Data::conn(),$_POST['user']);
    $pass= mysqli_real_escape_string(Data::conn(),md5($_POST['password']));
    $role=mysqli_real_escape_string(Data::conn(),$_POST['role']);

    $sql = "select user_name from user where user_name = '{$user}'";
    $result = Data::query($sql);

    if(mysqli_num_rows($result) > 0){
        $user_already= '<h3 class="text-center text-danger">User Name already Existed</h3>';
    }else{
        $sql2= "insert into user (first_name, last_name, user_name, password, role) values ('$fname','$lname', '$user', '$pass','$role')";
        $rs= Data::query($sql2);
        header('location: users.php');
    }
}
?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add User</h1>
                  <?php if(isset($user_already)){
                      echo $user_already;
                  } ?>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form Start -->
                  <form  action="" method ="POST" autocomplete="off">
                      <div class="form-group">
                          <label>First Name</label>
                          <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                      </div>
                          <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                      </div>
                      <div class="form-group">
                          <label>User Name</label>
                          <input type="text" name="user" class="form-control" placeholder="Username" required>
                      </div>

                      <div class="form-group">
                          <label>Password</label>
                          <input type="password" name="password" class="form-control" placeholder="Password" required>
                      </div>
                      <div class="form-group">
                          <label>User Role</label>
                          <select class="form-control" name="role" >
                              <option value="0">Normal User</option>
                              <option value="1">Admin</option>
                          </select>
                      </div>
                      <input type="submit"  name="save" class="btn btn-primary" value="Save" required />
                  </form>
                   <!-- Form End-->
               </div>
           </div>
       </div>
   </div>
<?php include "footer.php"; ?>
