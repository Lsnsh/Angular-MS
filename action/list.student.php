<?php
$data = array(
	array(
		"StuNo" => 201201071523,
		"StuName" => "赵拼山",
		"Gender" => '男',
		"Specialty" => "软件工程",
		"Branch" => "软件分院",
		"Grade" => 1,
		"Introduction" => "学生简介"
	),
	array(
		"StuNo" => 201201071524,
		"StuName" => "刘志强",
		"Gender" => '男',
		"Specialty" => "统计学",
		"Branch" => "统计分院",
		"Grade" => 2,
		"Introduction" => "学生简介"
	),
	array(
		"StuNo" => 201201071525,
		"StuName" => "王东辉",
		"Gender" => '男',
		"Specialty" => "会计",
		"Branch" => "会计分院",
		"Grade" => 4,
		"Introduction" => "学生简介"
	),
	array(
		"StuNo" => 201201071526,
		"StuName" => "启明秋",
		"Gender" => '男',
		"Specialty" => "工商企业管理",
		"Branch" => "商学院",
		"Grade" => 2,
		"Introduction" => "学生简介"
	),
	array(
		"StuNo" => 201201071527,
		"StuName" => "萧逸",
		"Gender" => '男',
		"Specialty" => "信息安全",
		"Branch" => "计算机网络分院",
		"Grade" => 3,
		"Introduction" => "学生简介"
	)
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);