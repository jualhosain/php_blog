<?php 
    include "header.php";
    require_once "data/data.php";
    
    // for pagination : 

    $sql3= "select * from post";
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
     $userId= $_SESSION['user_id'];
    if($_SESSION['user_role']=='1'){
        $sql = "select * from post join user on post.author = user.user_id join category on post.category = category.c_id order by p_id desc limit $startwith,$limit";
        $result= Data::query($sql);
    }else{
        $sql = "select * from post join user on post.author = user.user_id join category on post.category = category.c_id where author = $userId order by p_id desc limit $startwith,$limit";
        $result= Data::query($sql);
    }

 ?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">All Posts</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-post.php">add post</a>
              </div>
              <div class="col-md-12">
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Title</th>
                          <th>Category</th>
                          <th>Date</th>
                          <th>Author</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </thead>
                      <tbody>
                      <?php 
                           $sl = $startwith+1;
                          while($rs= mysqli_fetch_assoc($result)){
                    ?>
                          <tr>
                              <td class='id'><?php echo $sl++ ?></td>
                              <td><?php echo $rs['p_title'] ?></td>
                              <td><?php echo $rs['c_name'] ?></td>
                              <td><?php echo $rs['p_date']; ?></td>
                              <td><?php echo $rs['post']=='0'?'Normal User':'Admin';?> </td>
                              <td class='edit'><a href='update-post.php?post=<?php echo $rs['p_id'] ?>'><i class='fa fa-edit'></i></a></td>
                              <td class='delete'><a href='delete-post.php?post=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['category'] ?>'><i class='fa fa-trash-o'></i></a></td>
                          </tr>
                          <?php } ?>
                      </tbody>
                  </table>
                  <ul class='pagination admin-pagination'>
                      
            <?php
                if($currentPage > 1){echo "<li><a href='post.php?page=".($currentPage-1)."'>Prev</a></li>";}
                for($cc=1; $cc<=$page; $cc++){                      
                    if($cc==$currentPage){
                        echo "<li class='active'><a href='post.php?page=".$cc."'>".$cc."</a></li>";
                    }else{
                        echo "<li><a href='post.php?page=".$cc."'>".$cc."</a></li>";
                    }
                }
                if($currentPage < $page){echo "<li><a href='post.php?page=".($currentPage+1)."'>Next</a></li>";}
            ?>
                  </ul>
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
