<?php
require_once('./../../lib/upload.php');
require_once('./../commons/head.php');
require_once('brand.php');
if (isset($_SESSION['success'])) {
    unset($_SESSION['success']);
}
$brand = new Brand();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (is_numeric($id)) {
        $obj = $brand->getBrandById($id);
    } else {
        header('Location:index.php');
    }
}
if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $realpath = $obj['img'];
    $upload = new upload();
    if (isset($_FILES['file']) && $_FILES['file']['name']!='') {
        //   echo "aaa";
           //xoa file cu
           if (file_exists('uploads/' . $realpath)) {
               try {
                   unlink('uploads/' . $realpath);
               } catch (Exception $e) {
                   echo $e->getMessage();
               }
           }
           // up file moi
           $upload = new upload();
           $upload->upload();
           $realpath = $upload->getRealpath();
           $_POST['file'] = $realpath; //getRealpath -> file name
           $brand->update($_POST);
       } else { //nen k co anh dc uploads thi lays nah cu chen vao db
           $_POST['file'] = $realpath;
           $brand->update($_POST);
       }

    header('Location:edit.php?id=' . $id);
}

?>

<body>
    <?php
    require_once('./../commons/nav_menu.php');
    ?>
    <div class="container">
        <?php
        if (isset($_SESSION['success'])) {
        ?>
            <div class="alert alert-primary" role="alert">
                <?php echo $_SESSION['success'] ?>
            </div>
        <?php
        }
        ?>
        <form method="post" enctype="multipart/form-data">

            <input type="hidden" name="id" value="<?php echo $obj['id'] ?>" required />
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Tên</label>
                <div class="col-sm-10">
                    <input type="text" name="name" value="<?php echo $obj['name'] ?>" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Hình ảnh</label>
                <div class="col-sm-10">
                    <img height="30px" width="50px" src="<?php echo 'uploads/' . $obj['img'];  ?>" alt="">
                    <input type="file" name="file">
                </div>
            </div>
            <input type="submit" class="btn btn-primary"></input>
        </form>
    </div>
</body>
<?php
require_once('./../commons/footer.php');
?>