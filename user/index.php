<?//php include("includes/nav.php"); ?>
<?php include("includes/header_nav.php"); ?>

<?php
if(isset($_POST['submit'])){
    $pro = new Product();

    $pro->pro_name = $_POST['name'];
    $pro->pro_type = $_POST['type'];
    $pro->pro_qty = $_POST['qty'];
    $pro->pro_size = $_POST['size'];
    $pro->pro_category = $_POST['cat'];
    $pro->pro_datepost = date('Y/m/d');

    $img_temp = $_FILES['image']['tmp_name'];
    $img_nme = $_FILES['image']['name'];
    $move_img = "upload_img/$img_nme";

    $pro->pro_img = $img_nme;

    $run = $pro->create();
    if($run){
        move_uploaded_file($img_temp, $move_img);
        $msg = "successful inserted";
        keepmsg($msg);
    }
    else{
        $msg = "not inserted";
        //keepmsg($msg);
    }

}
?>
        <div id="page-wrapper">

            <div class="container-fluid">
                <div class=""><?php echo showmsg(); ?></div>

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add A Product
                            <small></small>
                        </h1>
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                        <form name="sentMessage" method="post" id="contactForm" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
          <div class="control-group form-group">
            <div class="controls">
              <label>Product Name:</label>
              <input type="text" class="form-control" id="name" name="name"  data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Product Type:</label>
              <input type="text" class="form-control" id="name" name="type"  data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Quantity:</label>
              <input type="text" class="form-control" id="name" name="qty"  data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Size:</label>
              <input type="text" class="form-control" id="name" name="size"  data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
             <label for="sel1">Category:</label>
             <select class="form-control" id="sel1" name="cat">
             <option>Electronics</option>
             <option>Furniture</option>
             <option>Marbles</option>
             <option>Wears</option>
             </select>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="image">Upload Picture</label>
            <div class="col-sm-10">
              <input type="file" name="image" id="image" class="image_inp" onchange="loadFile(event)" onclick="document.getElementById('upload').style.display='none'" >
              <label for="image" class="btn btn-secondary">Upload image</label>
              <p style="color: red;" id="upload">pls make sure you upload a picture</p>
              <img id="output" width="100" height="100" style="top: 0px!important; position: inherit!important;" >
            </div>
          </div>
          <button type="submit" class="btn btn-primary" id="sendMessageButton" name="submit">Add</button>
        </form>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->



        <!-- End of html page -->
        </div>
    <!-- /#wrapper -->
    <script type="text/javascript">
  
  var loadFile = function(event){
    var image = document.getElementById('output');
    image.src = URL.createObjectURL(event.target.files[0]);
  };
</script>
    <!-- jQuery -->
    <script src="admin/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="admin/js/bootstrap.min.js"></script>

</body>

</html>