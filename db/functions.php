<?php

function redirect($page){
    header("Location: {$page}");
}

function keepmsg($msg){
    !empty($msg) ? $_SESSION['msg'] = $msg : $msg = "";
}

function showmsg(){
    if(isset($_SESSION['msg'])){
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
}

?>