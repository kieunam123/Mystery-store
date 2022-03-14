<?php
$product = new Product();

// make condition filter to in WHERE DB
$conditions = '';
if (isset($_POST['filter'])) {
    $filters = array();
    $_SESSION['alert'] = '';
    foreach ($_POST as $key => $value) {
        if ($key != 'sort' && $value != '') {
            $filters[$key] = $value;
        }
    }
    //    var_dump($filters);
    $i = 0;
    foreach ($filters as $key => $value) {
        $i++;
        if ($i == count($filters)) {
            $condition = $key . ' LIKE ' . "'" . '%' . $value . '%' . "'";
            $_SESSION['alert'] = $_SESSION['alert'] . $key . ' = '  . $value . ' ';
        } else {
            $condition = $key . ' LIKE ' . "'" . '%' . $value . '%' . "'" . ' AND ';
            $_SESSION['alert'] = $_SESSION['alert'] . $key . ' = '  . $value . ' , ';
        }

        $conditions = $conditions . $condition;
    }
    $_SESSION['condition'] = $conditions;
}
if (isset($_POST['reset'])) $_SESSION['condition'] = '';
?>

<div class="container">
    <form method="post">
        <table class="table table-striped table-inverse table-responsive">
            <thead class="thead-inverse">
                <tr>
                    <th>Thương hiệu</th>
                    <th>Chất liệu</th>
                    <th>Size</th>
                    <th>Phân loại</th>
                    <th>Loại</th>

                </tr>
            </thead>
            <tbody>
                <tr>
			
                    <td scope="row"><select name="brand_id" id="">
                            <option value="">Chọn</option>
                            <option value="9">Nike</option>
                            <option value="10">Adidas</option>
                            <option value="11">Christian dior</option>
                            <option value="15">Luis Vuitton</option>
                        </select>
                    </td>
                    <td> <select name="keyword" id="">
                            <option value="">Chọn</option>
                            <option value="thun">Thun</option>
                            <option value="cotton">Cotton</option>
                            <option value="jeans">Jeans</option>
                            <option value="len">Len</option>
                        </select>
                    </td>
                    <td> <select name="size" id="">
                            <option value="">Chọn</option>
                            <option value="Freesize">Freesize</option>
                            <option value="M">M</option>
                            <option value="L">L</option>
                            <option value="XL">XL</option>
                            <option value="XXL">XXL</option>
                        </select>
                    </td>
                    <td> <select name="keyword" id="">
                            <option value="">Chọn</option>
                            <option value="7">Hàng mới về</option>
                            <option value="8">Hàng cao cấp</option>
                        </select>
                    </td>
                    <td>
                        <select name="keyword" id="">
                            <option value="">Chọn</option>
                            <option value="ao">Áo</option>
                            <option value="quan">Quần</option>
							<option value="non">Nón</option>
							<option value="ao khoac">Áo Khoác</option>
							<option value="flannel">Flannel</option>
							
							
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>
		
       <center> <button type="submit" name="filter">Lọc</button> <button  class="btn btn-primary" type="reset" name="reset">Xoa Loc</button></center>		
        <hr>
    </form>
    <form action="" method="post">
        <select name="sort_key" id="">
            <option value="">Chọn</option>
            <option value="tang">Giá tăng dần</option>
            <option value="giam">Giá giảm dần</option>
            <option value="new">Mới nhất trước</option>
            <option value="dis_max">Giảm gia nhiều nhất trước</option>
            <option value="topsell">Bán chạy nhất</option>
        </select>
        <button class="btn btn-primary" name="sort" type="submit">Sap xep</button>
        <!-- <button type="reset" name="reset">Xoa Loc</button> -->
    </form>
</div>