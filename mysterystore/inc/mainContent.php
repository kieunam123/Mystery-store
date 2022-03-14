<?php
$product = new Product();
$list = $product->getAll(0, 10);
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

<div class="maincontent-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="latest-product">
                    <h2 class="section-title">Deals On Sales</h2>
                    <div class="product-carousel">
                        <?php
                        foreach ($list as $r) {
                            $listImg = $product->getImg($r['id']);

                        ?>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="<?php echo 'admin/product/uploads/' . $listImg[0]['img']; ?>" alt="<?php echo $r['name'] ?>" class="index-img">
                                    <div class="product-hover">
                                        <a href="?add-to-cart=<?php echo $r['id'] ?>" 
                                        class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                         <a href="single-product.php?product_id=<?php echo $r['id'] ?>" class="view-details-link"><i class="fa fa-link"></i> See details</a> 
                                    </div>
                                </div>

                                <h2><a href="single-product.php?product_id=<?php echo $r['id'] ?>"><?php echo $r['name'] ?></a></h2>

                                <div class="product-carousel-price">
                                    <ins><?php $sellprice = $r['price'] * (100 - $r['discount']) / 100;
                                            echo number_format($sellprice) ?></ins>
                                    <del><?php if ($sellprice != $r['price']) echo number_format($r['price']) ?></del>
                                </div>
                            </div>
                        <?php  } ?>

                    </div>
                </div>
                
            </div>

        </div>
    </div>
</div>