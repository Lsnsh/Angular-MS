<?php
$data = array(
	"StuNo" => 201201071523,
	"StuName" => "赵拼山",
	"Gender" => '男',
	"Specialty" => "软件工程",
	"Branch" => "软件分院",
	"Grade" => 1,
	"Introduction" => "学生简介"
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);