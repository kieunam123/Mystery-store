<?php
$brand = new Brand();
$listbrand = $brand->getAllNoLimit();

?>

<div class="brands-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="brand-wrapper">
                    <div class="brand-list ">
                        <?php
                        foreach ($listbrand as $r) {
                        ?>
                            <a href="brand.php?brand_id=<?php echo $r['id'] ?>">
							
                                <img src="<?php echo 'admin/brand/uploads/' . $r['img'] ?>" " alt=" <?php echo $r['id'] ?>"></a>
								
								

                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>