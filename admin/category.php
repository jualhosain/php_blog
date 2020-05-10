<?php 
    include "header.php"; 
    require_once "data/data.php";

    Data::user_r($_SESSION);

    $sql= "select * from category";
    $result = Data::query($sql);
    $numCat= mysqli_num_rows($result);
    $limit= 5;
    $totalPage= ceil($numCat/$limit);
    if(isset($_GET['page'])){
        $currentPage= $_GET['page'];
    }else{
        $currentPage= 1;
    }
    $startWith= ($currentPage- 1)*$limit;
    $sql1= "select * from category order by c_id desc limit $startWith , $limit";
    $num = Data::query($sql1);
?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1 class="admin-heading">All Categories</h1>
            </div>
            <div class="col-md-2">
                <a class="add-new" href="add-category.php">add category</a>
            </div>
            <div class="col-md-12">
                <table class="content-table">
                    <thead>
                        <th>S.No.</th>
                        <th>Category Name</th>
                        <th>No. of Posts</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </thead>
                    <tbody>
                        <?php
                        $sl= $startWith+1;
                        while ($rs= mysqli_fetch_assoc($num)){
                        ?>
                        <tr>
                            <td class='id'><?php echo $sl++; ?></td>
                            <td><?php echo $rs['c_name']?></td>
                            <td><?php echo $rs['post']?></td>
                            <td class='edit'><a href='update-category.php?id=<?php echo $rs['c_id'] ?>'><i class='fa fa-edit'></i></a></td>
                            <td class='delete'><a href='delete-category.php?id=<?php echo $rs['c_id'] ?>'><i class='fa fa-trash-o'></i></a></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
                <ul class='pagination admin-pagination'>
                      <?php
                            if($currentPage > 1){
                                echo "<li><a href='category.php?page=".($currentPage-1)."'>Prev</a></li>";
                            }
                            for($cc=1; $cc<=$totalPage; $cc++){                      
                                if($cc==$currentPage){
                                    echo "<li class='active'><a href='category.php?page=".$cc."'>".$cc."</a></li>";
                                }else{
                                    echo "<li><a href='category.php?page=".$cc."'>".$cc."</a></li>";
                                }
                            }
                            if($currentPage < $totalPage){
                                echo "<li><a href='category.php?page=".($currentPage+1)."'>Next</a></li>";
                            }
                      ?>
                      </ul>
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
