<?php

header("Content-type: text/html; charset=utf-8");


session_start();

// 将用户存储到session中
$_SESSION['username'] = $_POST['username'];
$_SESSION['password'] = $_POST['password'];

setcookie('username', $_POST['username']);
setcookie('password', $_POST['password']);
$status = '注册成功!';

// 返回结果
echo json_encode(
	array(
		"errno" => 0,
		"data" => array(
			"username" => $_POST['username'],
			"status" => $status	
		)
	)	
);