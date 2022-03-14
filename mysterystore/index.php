<?php
include_once("inc/head.php");
if (isset($_GET['add-to-cart']) || isset($_SESSION['cart'])) {
include_once("inc/top.php");
}
else{include_once("inc/top2.php");}
include_once("inc/slide.php");

// Turn off all error reporting
error_reporting(0);
?>
<?php
//include_once("inc/promo.php");
?>

<!-- End promo area -->
<?php
include_once("inc/mainContent.php");
?>
<!-- End main content area -->
<?php
include_once("inc/brand.php");
?>
<!-- End brands area -->

<?php
//include_once("inc/widget.php");
?>

<!-- End product widget area -->
<?php
include_once("inc/footer.php");
?>