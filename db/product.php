<?php
class Product extends Users{
    public static $dbtable = "products";
    public static $dbtable_field = array('id', 'pro_name',
'pro_price', 'pro_qty', 'pro_size', 'pro_category', 'pro_datepost', 'pro_img');

    public $id;
    public $pro_name;
    public $pro_price;
    public $pro_qty;
    public $pro_size;
    public $pro_category;
    public $pro_datepost;
    public $pro_img;

}

?>