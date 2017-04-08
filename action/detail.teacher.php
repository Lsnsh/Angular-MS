<?php
$data = array(
	"id" => 2,
	"name" => "用户2",
	"password" => "password2",
	"date" => 1455808822088,
	"gender" => 1,
	"post" => "教师",
	"content" => "语文老师2"
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);