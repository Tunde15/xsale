<?php

class Session{
    public $signedin = false;
    public $id;

    public function __construct(){
        session_start();
        $this->checklogin();
        
    }

    public function checklogin(){
        if(isset($_SESSION['login'])){
            $this->id = $_SESSION['login'];
            $this->signedin = true;
        }
        else{
            unset($this->id);
            $this->signedin = false;
        }
    }

    public function checksignin(){
        return $this->signedin;
    }

    public function login($user){
        if($user){
            $this->id = $_SESSION['login'] = $user->id;
            $this->signedin = true;
        }

    }

}
$session = new Session()
?>