<?php
$data = array(
	array(
		"id" => 1,
		"name" => "用户1",
		"password" => "password1",
		"date" => 1455808822088,
		"gender" => 1,
		"post" => "教师",
		"content" => "数学老师1"
	),
	array(
		"id" => 2,
		"name" => "用户2",
		"password" => "password2",
		"date" => 1455808822088,
		"gender" => 0,
		"post" => "教师",
		"content" => "语文老师2"
	),
	array(
		"id" => 3,
		"name" => "用户3",
		"password" => "password3",
		"date" => 1455808822088,
		"gender" => 1,
		"post" => "教师",
		"content" => "英语老师3"
	),
	array(
		"id" => 4,
		"name" => "用户4",
		"password" => "password4",
		"date" => 1455808822088,
		"gender" => 1,
		"post" => "教师",
		"content" => "物理老师4"
	),
	array(
		"id" => 5,
		"name" => "用户5",
		"password" => "password5",
		"date" => 1455808822088,
		"gender" => 1,
		"post" => "教师",
		"content" => "化学老师5"
	)
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);