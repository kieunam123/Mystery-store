<?php
include_once("inc/head.php");
if (isset($_GET['add-to-cart']) || isset($_SESSION['cart'])) {
include_once("inc/top.php");
}
else{include_once("inc/top2.php");}
?>
<?php
$product = new Product();
$products = new Product();
$brands = new Brand();

if (isset($_GET['product_id'])) {
    $id = $_GET['product_id'];
    $productSingle = $product->getProductById($id);
    //show categorys of product
    $cate = new Cate();
    $cates = $cate->getCatesByProductId($productSingle['id']);
	$thuonghieu1 = $brands->getBrandsByProductId($productSingle['brand_id']);

} else {
   
}


//add product to cart by POST method
if (isset($_POST['add-to-cart']) && $_POST['add-to-cart'] > 0) {
    $id = $_POST['add-to-cart'];
    //   var_dump($_POST);
    $quantity = $_POST['quantity'];
    $productInCart = $product->getProductById($id);
    //  var_dump($productInCart);
    $price = $productInCart['price'];
    $name = $productInCart['name'];
	
    if (isset($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        $flag = false;
        for ($i = 0; $i < count($cart); $i++) {
            if ($id == $cart[$i]['id']) {
                $cart[$i]['quantity'] = $quantity;
                $flag = true; //isseted product in cart
                break;
            }
        }
		
        if ($flag == false) { //if !isset product in cart
            $item = array(
                'id' => $id,
                'quantity' => $quantity,
                'price' => $price,
                'name' => $name
            );
            array_push($cart, $item);
            $_SESSION['cart'] = $cart;
			
        }
    } else { //if cart not isset
        $item = array(
            'id' => $id,
            'quantity' => $quantity,
            'price' => $price,
            'name' => $name
        );
        $cart = array($item);
        $_SESSION['cart'] = $cart;
		
    }
	echo("<meta http-equiv='refresh' content='0.1'>");
}
?>

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Chi Ti???t S???n Ph???m</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <?php include_once('inc/singleSlidebar.php') ?>
            </div>
            <!-- ./ end sidebar -->
            <!-- MAin details -->
            <div class="col-md-8">
                <div class="product-content-right">
                    <div class="product-breadcroumb">
                        <a href="index.php">Home</a>
                        <?php foreach ($cates as $category) { ?>
                                <a href="productByCategory.php?cate=<?php echo $category['id']; ?>"><?php echo $category['name']; ?></a>
                        <?php } ?>
                    </div>
                    <?php $listImg = $product->getImg($productSingle['id']);
                    ?>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="product-images">
                                <div class="product-main-img">
                                    <?php
                                    $src = null;
                                    if (count($listImg) != 0) $src = 'admin/product/uploads/' . $listImg[0]['img'];
                                    echo '<img class="mainImg" height="800px" width="1000px" src="' . $src . '" alt="">';
                                    ?>

                                </div>
                                <!--   to show img -->
                                <div class="product-gallery">
                                    <?php
                                    for ($j = 0; $j < count($listImg); $j++) {
                                    ?>
                                        <!-- <a href="?product_id=<?php echo $id ?>&&img=<?php echo  $r['img'] ?>"> -->
                                        <img id="" class="<?php echo 'imgIcon' . $j ?>" src="<?php echo 'admin/product/uploads/' . $listImg[$j]['img'] ?>" alt="">
                                        <!-- </a> -->

                                    <?php } ?>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="product-inner">
                                <h2 class="product-name"><?php echo $productSingle['name'] ?></h2>
                                <div class="product-inner-price">
                                    <!-- <ins><?php echo number_format($productSingle['price']) . ' VND' ?></ins> -->
                                    <ins><?php $sellprice = $productSingle['price'] * (100 - $productSingle['discount']) / 100;
                                            echo number_format($sellprice) . ' VND' ?></ins>
                                    <del><?php if ($sellprice != $productSingle['price']) echo number_format($productSingle['price']) . ' VND' ?></del>
                                    <!-- <del>$100.00</del> -->
                                </div>
                                <!-- form post to cart  -->
                                <form action="" method="post" class="cart">
                                   <!-- <div class="quantity">
                                        <input type="number" size="4" class="input-text qty text" title="S??? l?????ng" value="1" name="quantity" min="1" step="1">
                                    </div>
                                    <button class="add_to_cart_button" name="add-to-cart" value="<?php echo $productSingle['id'] ?>" type="submit">Th??m v??o gi???</button>-->
									 <a href="single-product.php?product_id=<?php echo $productSingle['id'] ?>&&add-to-cart=<?php echo $productSingle['id']?>" type="submit" class="add_to_cart_button " class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> TH??M V??O GI???</a>
									
                                </form>
								
								
								

                                <div class="product-inner-category">
                                    <!-- <p>Category: <a href=""><?php  ?></a>. -->
                                    Keyword: <a href="search.php?search_key=<?php echo $productSingle['keyword'] ?> "><?php echo $productSingle['keyword'] ?></a>
                                </div>

                                <div role="tabpanel">

                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="home">

											                               <h2><b>M?? T???</b></h2>
                                            <h2><?php echo nl2br($productSingle['short_desc']); ?></h2>

                                                <hr>
                                        </div>
                                       											<h2><b>?????c ??i???m N???i B???t</b></h2>
                                            <table class="table table-striped table-inverse table-responsive">

                                                <tbody>
                                                    <tr>
                                                        <td scope="row">T??n s???n ph???m</td>

                                                        <td><?php echo $productSingle['name'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Th????ng hi???u</td>

                                                        <td><?php foreach ($thuonghieu1 as $brand) { ?>
                                <a href="brand.php?brand_id=<?php echo $brand['id']; ?>"><?php echo $brand['name']; ?></a>
                        <?php } ?></td>

                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Lo???i</td>
                                                        <td>                        <?php foreach ($cates as $category) { ?>
                                <a href="productByCategory.php?cate=<?php echo $category['id']; ?>"><?php echo $category['name']; ?></a>
                        <?php } ?> </td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">T??nh tr???ng</td>
                                                        <td><?php if ($productSingle['status'] == 1) echo 'm???i';
                                                            else echo 'c??' ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Gi???m gi??</td>
                                                        <td><?php echo $productSingle['discount'] . '%' ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Ch???t li???u</td>
                                                        <td><?php echo $productSingle['chip'] ?></td>
                                                    </tr>

                                                   <tr>
                                                        <td scope="row">Kho h??ng</td>
                                                        <td><?php echo $productSingle['quantity_product'] ?></td>
                                                    </tr>
                                                  <!--  <tr>
                                                        <td scope="row">K???t n???i</td>
                                                        <td><?php echo $productSingle['connect'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">V??n tay</td>
                                                        <td><?php if ($productSingle['vantay'] == 0) echo 'C??';
                                                            else echo 'Kh??ng' ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">HDH</td>
                                                        <td><?php echo $productSingle['operation'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Pin</td>
                                                        <td><?php echo $productSingle['pin'] . ' cell' ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">Tr???ng l?????ng</td>
                                                        <td><?php echo $productSingle['weight'] . ' kg' ?></td>
                                                    </tr>-->
                                                    <tr>
                                                        <td scope="row">S??? ??o</td>
                                                        <td><?php echo $productSingle['size'] ?></td>
                                                    </tr>
                                                    <!-- <tr>
                                                        <td scope="row">???? b??n</td>
                                                        <td><?php echo $productSingle['selled'] ?></td>
                                                    </tr> -->
                                                </tbody>
                                            </table>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <?php
                    include_once("inc/related.php")
                    ?>

                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // change src img main product for 5 img
    $(document).ready(function() {
        $('.imgIcon0').click(function() {
            $imgsrc = $('.imgIcon0').attr('src');
            console.log($imgsrc);
            $('.mainImg').attr('src', $imgsrc);
        });
        $('.imgIcon1').click(function() {

            $imgsrc = $('.imgIcon1').attr('src');
            console.log($imgsrc);
            $('.mainImg').attr('src', $imgsrc);
        });
        $('.imgIcon2').click(function() {

            $imgsrc = $('.imgIcon2').attr('src');
            console.log($imgsrc);
            $('.mainImg').attr('src', $imgsrc);

        });
        $('.imgIcon3').click(function() {

            $imgsrc = $('.imgIcon3').attr('src');
            console.log($imgsrc);
            $('.mainImg').attr('src', $imgsrc);
        });
        $('.imgIcon4').click(function() {

            $imgsrc = $('.imgIcon4').attr('src');
            console.log($imgsrc);
            $('.mainImg').attr('src', $imgsrc);
        });

    });
</script>
<?php
include_once("inc/footer.php");
?>
