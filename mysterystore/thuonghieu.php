<?php
include_once("inc/head.php");
if (isset($_GET['add-to-cart']) || isset($_SESSION['cart'])) {
include_once("inc/top.php");
}
else{include_once("inc/top2.php");}
?>
<?php
$brand = new Brand();
$listbrand = $brand->getAllNoLimit();
?>
<style>/*ajustoosbotõesnotamanhoqueeuquero*/.owl-prev,.owl-next{width:25px;height:25px;position:relative;background:none!important;}/*crioospseudo-elementos*/.owl-prev::before,.owl-next::before{content:'';position:absolute;top:0;left:0;width:100%;height:100%;background:DodgerBlue;border-radius:50%!important;line-height:50px;}/*hoverparamudardecor*/.owl-prev:hover::before,.owl-next:hover::before{background:LightSkyBlue;}/*crioassetasecentralizo*/.owl-prev::after,.owl-next::after{content:"";
   width: 12px;
   height: 12px;
   position: absolute;
   transform: rotate(135deg);
   border: 1px solid #eaeaea;
   border-width: 0 3px 3px 0;
   top: 50%; left: 50%;
   margin-top: -5px;
   margin-left: -3px;
}

/* ajusto a seta next */
.owl-next::after {
   transform: rotate(-45deg);
   margin-left: -10px;
}
</style>


<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Brands - Thương Hiệu </h2>
                </div>
            </div>
        </div>
    </div>
</div>

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
<?php
include_once("inc/footer.php")
?>