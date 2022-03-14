<?php
require_once('./../commons/head.php');
require_once('users.php');
require_once('products.php');
require_once('order.php');

$order = new Order();
$product = new Product();


$id_order = $_GET['id_order'];
$orders = $order->getOrderById($id_order);
$productList = $order->getProductListInOrder($id_order);
$total = 0;
?>

<body>
    <?php
    require_once('./../commons/nav_menu.php');
    ?>

    <div class="container">
        <table class="table">

            <tbody>
              
                <tr>
                    <td scope="row">ID</td>
                    <td><?php echo $id_order ?></td>
                </tr>
				
                <tr>
                    <td scope="row">Họ Tên</td>
                    <td><?php echo $orders['ten'] ?></td>
                </tr>

                <tr>
                    <td scope="row">Tinh trang</td>
                    <td><?php
                            switch ($orders['status']) {
                                case '1':
                                    echo 'Đa giao  cho DVVC';
                                    break;
                                case '0':
                                    echo 'Mới đặt hàng';
                                    break;
                                case '2':
                                    echo 'Đã nhận';
                                    break;
                                default:
                                    echo 'Unknows';
                                    break;
                            }
                            ?></td>
                </tr>				
                <tr>
                    <td scope="row">SĐT</td>
                    <td><?php echo $orders['time'] ?></td>
                </tr>
				
				 <tr>
                    <td scope="row">Địa chỉ</td>
                    <td><?php echo $orders['extra_address'] ?></td>
                </tr>

				 <tr>
                    <td scope="row">Thành Phố / Tỉnh</td>
                    <td><?php echo $orders['city'] ?></td>
                </tr>
				
				 <tr>
                    <td scope="row">Email</td>
                    <td><?php echo $orders['email'] ?></td>
                </tr>				

				 <tr>
                    <td scope="row">Ghi chú</td>
                    <td><?php echo $orders['notes'] ?></td>
                </tr>	
               
                <tr>
                    <td scope="row"><b>Danh Sách Sản Phẩm</b></td>
            
                    <td>
                        <?php foreach ($productList as $product) { ?>
                            <tr>
                                <td><?php echo 'số lượng ' . $product['quantity'] ?></td>
                                <td><a <?php echo $product['id']; ?>"><?php echo $product['name']; ?></a></td>
                                <!--<td><?php echo number_format($product['price']) . ' VND'; ?></a></td>-->
                            </tr>
                        <?php } ?>
                     </td>


               </tr>
            <tr>
                <td scope="row">Tong gia</td>
                <td><?php
                    foreach ($productList as $product) {
                        $total = $total + $product['price'] * $product['quantity'];
                    }
                    echo number_format($total) . ' VND' ?></td>
            </tr>
            <tr>
                <td scope="row">Phuong thuc thanh toan</td>
                <td><?php echo 'COD' ?></td>
            </tr>

            </tbody>
        </table>
    </div>
</body>
<?php
require_once('./../commons/footer.php');
?>