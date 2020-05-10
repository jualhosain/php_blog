<?php 
    include "header.php";
    require_once "admin/data/data.php";
    
    // for pagination : 
    $auth_id= mysqli_real_escape_string(Data::conn(), $_GET['author']);
    $sql3= "select * from post join user on post.author = user.user_id join category on post.category = category.c_id where post.author = $auth_id";

    $rs3= Data::query($sql3);
    $totalPOst = mysqli_num_rows($rs3);
    $limit = 5;
    $page = ceil($totalPOst/$limit);

     if(isset($_GET['no'])){
         $currentPage= $_GET['no'];
     }else{
         $currentPage= 1;
     }
     $startwith= ($currentPage-1)*$limit;

    // others
     $forcat= mysqli_fetch_assoc($rs3);
    $sql = "select * from post join user on post.author = user.user_id join category on post.category = category.c_id where post.author = $auth_id order by p_id desc limit $startwith,$limit";
    $result= Data::query($sql);

 ?>
    <div id="main-content">
      <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                  <h2 class="page-heading">Author Name: <span style='background: #13548c; color: white; font-size: 2rem; padding: 0.3rem 1rem;'><?php echo $forcat['first_name'].' '.$forcat['last_name'] ?></span></h2>
                  <?php
    while($rs= mysqli_fetch_assoc($result)){
?>
                        <div class="post-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <a class="post-img" href="single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>"><img src="admin/upload/<?php echo $rs['p_image']?>" alt=""/></a>
                                </div>
                                <div class="col-md-8">
                                    <div class="inner-content clearfix">
                                        <h3><a href='single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>'><?php echo substr($rs['p_title'],0,70);?></a></h3>
                                        <div class="post-information">
                                        <span>
                                                <i class="fa fa-tags" aria-hidden="true"></i>
                                                <a href='category.php?cat=<?php echo $rs['c_id'] ?>'><?php echo $rs['c_name'] ?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                <a href='author.php?author=<?php echo $rs['author'] ?>'><?php echo $rs['first_name'].' '.$rs['last_name'] ?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                                <?php echo $rs['p_date'] ?>
                                            </span>
                                        </div>
                                        <p class="description">
                                            <?php echo substr($rs['p_desc'],0,165).'....' ?>
                                        </p>
                                        <a class='read-more pull-right' href='single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>'>read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
    <?php } ?>

                        <ul class='pagination'>
                            <?php
                                if($currentPage > 1){echo "<li><a href='author.php?author=".$auth_id."&no=".($currentPage-1)."'>Prev</a></li>";}
                                for($cc=1; $cc<=$page; $cc++){                      
                                    if($cc==$currentPage){
                                        echo "<li class='active'><a href='author.php?author=".$auth_id."&no=".$cc."'>".$cc."</a></li>";
                                    }else{
                                        echo "<li><a href='author.php?author=".$auth_id."&no=".$cc."'>".$cc."</a></li>";
                                    }
                                }
                                if($currentPage < $page){echo "<li><a href='author.php?author=".$auth_id."&no=".($currentPage+1)."'>Next</a></li>";}
                            ?>
                        </ul>
                </div><!-- /post-container -->
            </div>
            <?php include 'sidebar.php'; ?>
        </div>
      </div>
    </div>
<?php include 'footer.php'; ?>
