<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
   $about_title = $row['about_title'];
    $about_content = $row['about_content'];
    $about_banner = $row['about_banner'];
}
?>
<style>
    @media screen and (max-width: 700px) {
    .page-banner{
       height:160px;
        background-repeat: no-repeat;
        background-position: center center;
        -webkit-background-size: 100% 100%;
        background-size: 100% 100%;
        position: relative;
        padding-top: 110px;
        overflow: hidden;
    }
  }
</style>
<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $about_banner; ?>);">
   
</div>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                
                <p>
                    <?php echo $about_content; ?>
                </p>

            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>