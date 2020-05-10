<?php 
    include "header.php";
    require_once "admin/data/data.php";
    if(isset($_GET['id'])){
    $post_id= mysqli_real_escape_string(Data::conn(), $_GET['id']);
    $cat_id= mysqli_real_escape_string(Data::conn(), $_GET['cat']);
    }else{
        header("location: index.php");
    }
    $sql = "select * from post join user on post.author = user.user_id join category on post.category = category.c_id where p_id=$post_id";
    $result= Data::query($sql);
    $rs= mysqli_fetch_assoc($result);

 ?>
    
    <div id="main-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                  <!-- post-container -->
                    <div class="post-container">
                        <div class="post-content single-post">
                            <h3><?php echo $rs['p_title']?></h3>
                            <div class="post-information">
                                <span>
                                    <i class="fa fa-tags" aria-hidden="true"></i>
                                    <a href="category.php?cat=<?php echo $rs['c_id'] ?>"><?php echo $rs['c_name']?></a>
                                </span>
                                <span>
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <a href='author.php?author=<?php echo $rs['author'] ?>'><?php echo $rs['first_name'].' '.$rs['last_name']?></a>
                                </span>
                                <span>
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                    <?php echo $rs['p_date']?>
                                </span>
                            </div>
                            <img class="single-feature-image" style="max-height: 300px; object-fit: cover; object-position: center;" src="admin/upload/<?php echo $rs['p_image']?>" alt=""/>
                            <p class="description">
                                <?php echo $rs['p_desc']?>
                            </p>
                        </div>
                    </div>
                    <!-- /post-container -->
                </div>
                <?php include 'sidebar.php'; ?>
            </div>
        </div>
    </div>
<?php include 'footer.php'; ?>
