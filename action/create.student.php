<?php
session_start();

//检测是否登录
if(!isset($_SESSION['username'])){
	$res = array(
		"data" => null,
		"errno" => 1,
		"msg" => "please login"
	);
	echo json_encode($res);
    exit();
}

$res = array(
	"data" => array(),
	"errno" => 0
);
echo json_encode($res);