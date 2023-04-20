<?php
include('includes/nav.php');
?><br><br><br>
<?php
$order = new Order();

?>
  <?php
if(isset($_POST['submit'])){
  $order->name = $_POST['name'];
  $order->email = $_POST['email'];
  $order->address = $_POST['adr'];
  $order->take_order();
    $msg = 'Hurray Order Successfully Created';
    keepmsg($msg);
  }
  ?>
<?php if(isset($_SESSION['msg'])) : ?>
          <div class="alert alert-success text-center">
            <strong><?php showmsg(); ?></strong>
          </div>
<?php endif; ?>
<div class="row">
      <div class="col-lg-2 mb-4">
      </div>
      <div class="col-lg-8 mb-4">
          <div class="card-header">
          <div class="row">
          <div class="col-4">
          </div>
      <div class="col-4">
        <button class="btn btn-sm btn-primary" id="pay-del-btn" onclick="display_pay_del();">Pay On Delivery</button>
        <button class="btn btn-sm btn-primary" id="pay-now-btn" onclick="display_pay_now();">Pay Now</button>
      </div>
      <div class="col-4">
      </div>
          </div>
          <div class="pay-del" id="pay-del"><br>
         <form name="sentMessage" method="post" id="contactForm" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
         <div class="control-group form-group">
            <div class="controls">
              <label>Full Name:</label>
              <input type="text" class="form-control" id="name" name="name"  data-validation-required-message="Please enter your full name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Email:</label>
              <input type="email" class="form-control" id="email" name="email"  data-validation-required-message="Please enter your email.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Contact Address:</label>
              <input type="text" class="form-control" id="adr" name="adr" required data-validation-required-message="Please enter your contact address.">
            </div>
          </div>
          <button type="submit" class="btn btn-primary" id="sendMessageButton" name="submit">Submit</button>
        </form>
          </div><br>
        <div style="display:none;" class="pay-now" id="pay-now">
        <form name="sentMessage" method="post" id="contactForm" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
          <div class="control-group form-group">
            <div class="controls">
              <label>Emal:</label>
              <input type="email" class="form-control" id="email" name="email"  data-validation-required-message="Please enter your email.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Password:</label>
              <input type="Password" class="form-control" id="pwd" name="password" required data-validation-required-message="Please enter your Password.">
              <label>Show Password:</label>
              <input type="checkbox" id="showpass" name="showpass" onclick="showMypass()">
            </div>
          </div>
          <button type="submit" class="btn btn-primary" id="sendMessageButton" name="submit">Submit</button>
        </form>
        </div>
      </div>
    </div>
  </div>
  <script>
        var pay_del = document.getElementById('pay-del');
        var pay_now = document.getElementById('pay-now');
        var pay_now_btn = document.getElementById('pay-now-btn');
        var pay_del_btn = document.getElementById('pay-del-btn');
     var display_pay_now =  function (){
        pay_now_btn.style.borderRight = '6px solid green';
        pay_del.style.display = 'none';
        pay_now.style.display = 'block';
        pay_del_btn.style.borderRight = 'none';
    }
    function display_pay_del(){
      pay_del_btn.style.borderRight = '6px solid green';
        pay_del.style.display = 'block';
        pay_now.style.display = 'none';
        pay_now_btn.style.borderRight = 'none';
    }
  </script>