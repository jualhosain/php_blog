<?php
require_once "admin/data/data.php";
$limit=4;
$sql = "select * from post join category on post.category = category.c_id order by p_id desc limit $limit";
$result= Data::query($sql);

?>
<div id="sidebar" class="col-md-4">
    <!-- search box -->
    <div class="search-box-container">
        <h4>Search</h4>
        <form class="search-post" action="search.php" method ="GET">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Search .....">
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-danger">Search</button>
                </span>
            </div>
        </form>
    </div>
    <!-- /search box -->
    <!-- recent posts box -->
    <div class="recent-post-container">
        <h4>Recent Posts</h4>
<?php
     while($rs= mysqli_fetch_assoc($result)){
?>
        <div class="recent-post">
        <a class="post-img" href="single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>"><img src="admin/upload/<?php echo $rs['p_image']?>" alt=""/></a>
            <div class="post-content">
            <h5><a href='single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>'><?php echo substr($rs['p_title'],0,70);?></a></h5>
                <span>
                    <i class="fa fa-tags" aria-hidden="true"></i>
                    <a href='category.php?cat=<?php echo $rs['c_id'] ?>'><?php echo $rs['c_name'] ?></a>
                </span>
                <span>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <?php echo $rs['p_date'] ?>
                </span>
                <a class='read-more' href='single.php?id=<?php echo $rs['p_id'] ?>&cat=<?php echo $rs['c_id']?>'>read more</a>
            </div>
        </div>
<?php } ?>
    </div>
    <!-- /recent posts box -->
</div>
