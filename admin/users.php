<?php
    include "header.php";
    require_once "data/data.php";

    Data::user_r($_SESSION);
    
    // for pagination : 

    $sql3= "select * from user";
    $rs3= Data::query($sql3);
    $totalPOst = mysqli_num_rows($rs3);
    $limit = 5;
    $page = ceil($totalPOst/$limit);

    if(isset($_GET['page'])){
        $currentPage= $_GET['page'];
    }else{
        $currentPage= 1;
    }
    $startwith= ($currentPage-1)*$limit;

    // others

    $sql = "select * from user order by user_id desc limit $startwith,$limit";
    $result= Data::query($sql);

?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">All Users</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-user.php">add user</a>
              </div>
              <div class="col-md-12">
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Full Name</th>
                          <th>User Name</th>
                          <th>Role</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </thead>
                      <tbody>
                          <?php 
                           $sl = $startwith+1;
                          while($rs= mysqli_fetch_assoc($result)){
                          ?>
                          <tr>
                              <td class='id'><?php echo $sl++;  ?></td>
                              <td><?php echo $rs['first_name'].' '.$rs['last_name']; ?></td>
                              <td><?php echo $rs['user_name']; ?></td>
                              <td><?php echo $rs['role'] == 0 ? 'Normal User':'Admin'; ?></td>
                              <td class='edit'><a href='update-user.php?id=<?php echo $rs['user_id']?>'><i class='fa fa-edit'></i></a></td>
                              <td class='delete'><a href='delete-user.php?id=<?php echo $rs['user_id']?>'><i class='fa fa-trash-o'></i></a></td>
                          </tr>
                         <?php } ?>
                      </tbody>
                  </table>
                  <ul class='pagination admin-pagination'>
                      
                  <?php
                        if($currentPage > 1){
                            echo "<li><a href='users.php?page=".($currentPage-1)."'>Prev</a></li>";
                        }
                        for($cc=1; $cc<=$page; $cc++){                      
                            if($cc==$currentPage){
                                echo "<li class='active'><a href='users.php?page=".$cc."'>".$cc."</a></li>";
                            }else{
                                echo "<li><a href='users.php?page=".$cc."'>".$cc."</a></li>";
                            }
                        }
                        if($currentPage < $page){
                            echo "<li><a href='users.php?page=".($currentPage+1)."'>Next</a></li>";
                        }
                  ?>
                  </ul>
              </div>
          </div>
      </div>
  </div>
<?php include "header.php"; ?>
