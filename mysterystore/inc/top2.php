<?php
//cart in session
//unset($_SESSION['cart']);


$products = new Product();

include_once('./models/users.php');/*
if (isset($_GET['add-to-cart'])) {
    //  var_dump($_GET);
    $id = $_GET['add-to-cart'];
    if (isset($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        $flag = false;
        //tăng số luợng sp nếu đã có sp này trong giỏ hàng
        for ($i = 0; $i < count($cart); $i++) {
            if ($cart[$i]['id'] == $id) {
                $cart[$i]['quantity'] = $cart[$i]['quantity'] + 1;
                $flag = true; //da ton tai mot cai san pham có id như vay trong gio hang
                break;
            }
        }

        // thêm mới sp vào giỏ hàng
        if ($flag == false) {
            
            $product = $products->getProductById($id);
            $item = array(
                'id' => $product['id'],
                'name' => $product['name'],
                'quantity' => 1,
                'price' => $product['price']
            );
            array_push($cart, $item);
        }
        $_SESSION['cart'] = $cart;
    } else {
        // đẩy sp vào giỏ hàng
       
        $product = $products->getProductById($id);
        $item = array(
            'id' => $product['id'],
            'name' => $product['name'],
            'quantity' => 1,
            'price' => $product['price']
        );
        $cart = array($item);
        $_SESSION['cart'] = $cart;
    }
    //  var_dump($_SESSION['cart']);
}



$total = 0;
$cart=$_SESSION['cart'];
foreach ($cart as $item) {
    $total += $item['price'] * $item['quantity'];
}*/


?>

<body>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
						<?php 
							
							if ( isset($_SESSION['user_id'])) { ?>
                            <li><?php echo 'Xin Chào!  ' . $_SESSION['user_login'] ?></li>
                            <li><a href="profileuser.php"><i class="fa fa-user"></i>Tài khoản của tôi </a></li>

                            <li><a href="orders.php"><i class="fa fa-shopping-cart"></i>Đơn Hàng</a></li>
                            <li><a href="cart.php"><i class="fa fa-shopping-cart"></i>Giỏ Hàng</a></li>
                            <li><a href="checkout.php"><i class="fa fa-check"></i> Checkout</a></li>
                            <!-- <li><a href="login.php"><i class="fa fa-user"></i> Đăng Nhập</a></li> -->
                            <li><a href="?logout=true"><i class=""></i> Đăng xuất</a></li>			
							

							<?php }else { ?>							
							<li><?php echo 'Xin Chào!' ?></li>
							<li><a href="login.php"><i class="fa fa-user"></i>Đăng nhập </a></li>
							<li><a href="register.php"><i class="fa fa-user"></i>Đăng ký </a></li>				
						<?php } 
						 ?>
								
								
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div> <!-- End header area -->

    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>

                </div>

                <div class="col-sm-11.5">
                    <div class="shopping-item">
					
					<a href="index.php">Cart - <span class="cart-amunt"><?php echo '0 đ'; ?></span>
                            <i class="fa fa-shopping-cart"></i> <span class="product-count"><?php echo '0'; ?></span></a>
					
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->

    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                
                <!-- <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                </div> -->
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="productByCategory.php?cate=1">Áo Thun</a></li>
                        <li><a href="productByCategory.php?cate=2">Quần</a></li>
                        <li><a href="productByCategory.php?cate=3">Nón</a></li>
						<li><a href="productByCategory.php?cate=5">Flannel</a></li>
						<li><a href="productByCategory.php?cate=4">Áo Khoác</a></li>
						 <li><a href="thuonghieu.php">Brands</a></li>
						<li><a href="category.php">Danh Mục</a></li>
                        <li><a href="shop.php">ALL</a></li>
                        <!-- <li>
                            <form style="margin-top: 10px" action="search.php" method="get">
                                <input type="text" name="search_key" id="" required>
                                <input type="submit" name="search" value="Tìm Kiếm">
                            </form>
                        </li> -->
                        <li>
                            <form action="search.php" method="get" style="margin-top: 10px" class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" name="search_key" placeholder="Nhap tu khoa.." aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" name="" type="submit">Tìm Kiếm</button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End mainmenu area -->