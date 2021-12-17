<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $faq_title = $row['faq_title'];
    $faq_banner = $row['faq_banner'];
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
<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $faq_banner; ?>);">
   
</div>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                
                <div class="panel-group" id="faqAccordion">                    

                    <?php
                    $statement = $pdo->prepare("SELECT * FROM tbl_faq");
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                    foreach ($result as $row) {
                        ?>
                        <div class="panel panel-default">
                            <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question<?php echo $row['faq_id']; ?>">
                                <h4 class="panel-title">
                                    Q: <?php echo $row['faq_title']; ?>
                                </h4>
                            </div>
                            <div id="question<?php echo $row['faq_id']; ?>" class="panel-collapse collapse" style="height: 0px;">
                                <div class="panel-body">
                                    <h5><span class="label label-primary" style="background-color: #ef6c00">Answer</span></h5>
                                    <p>
                                        <?php echo $row['faq_content']; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                    
                </div>

            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>