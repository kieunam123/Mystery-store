<?php
require_once("inc/head.php");
/*include_once("./models/users.php");
$users = new Users();
$user = $users->getByid($_SESSION['user_id']);*/

if (isset($_SESSION['username']) || isset($_SESSION['user_id']) || isset($_POST['username']) || (isset($_POST['user_id'])) ) {
    //header('Location:checkout.php');
    echo "<script type='text/javascript'>window.top.location='checkout.php';</script>"; exit;
} else {
    include_once("inc/top.php");
	//continue;



?>

<div class="product-big-title-area ">
    <div class="container ">
        <div class="row ">
            <div class="col-md-12 ">
                <div class="product-bit-title text-center ">
                    <h2>Đặt hàng</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="single-product-area ">
    <div class="zigzag-bottom "></div>
    <div class="container ">
	
			<div class="alert alert-primary" role="alert">
              <center>  Vui lòng <a href="login.php">Đăng nhập </a>hoặc <a href="register.php">Đăng ký </a>để tiếp tục đặt hàng
			  <br></br>
			  <br></br>
			  <br></br></center>
            </div>
	</div>
</div>

<?php
include_once("inc/footer.php");
}
?>