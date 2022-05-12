<?php
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
  /*include_once ('modules/cache-top.php');*/
  include('config.php');

  include('modules/control.php');
  if(isset($_GET['page']) && $_GET['page'] !== 1 && $_GET['page'] !== 0){
    $start = $config->limit * $_GET['page'];
  }else{
    $start = 0;
  }
  if(isset($_COOKIE['cart']) && $_COOKIE['cart'] !== ''){
    $listCart = explode(',', $_COOKIE['cart']);
    $totalCart = count($listCart);
  }

  if(!$menuPage) {
    http_response_code('404');
    $menuPage = $menu404;
    $errorPage = true;
  }

  include_once("modules/services/cart.php");

  $cart = new Cart;

  //kiểm tra tính năng thành viên
  if(isset($menuUser)){
    if(isset($_COOKIE['email']) && isset($_COOKIE['password'])){
      $user = $db->alone_data_where_where('user','email',$_COOKIE['email'],'password',$_COOKIE['password']);
      if(!$user){
        unset($user);
      }
    }
  }
  if(!isset($_GET['ajax']) && !$errorPage){
    include('modules/template/asset.php');
    
    // if(!isset($user)){
    //   include('modules/template/modal.php');
    // }

    include('views/template/head.php');
    include('modules/template/infopage.php');
    include('modules/content.php');
    include('views/template/footer.php');
    include('modules/template/template.php');
  }else{
    include('modules/template/infopage.php');
    include('modules/content.php');
  }
  include('views/template/reload-script.php');

  /*include_once ('modules/cache-bot.php');*/
?>