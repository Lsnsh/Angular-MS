<?php
	// header('Content-Type:text/html;charset=utf-8');

	// $res = json_decode(file_get_contents('php://input', 'r'), true);

	// 初始化状态
	$status = '';
	$uStatus = '';
	$pStatus = '';
	
	$arr = array(
		'Tom' => '123456',
		'Lindy' => '123456'
	);

	// 获取请求参数
	$username = isset($_POST['username']) ? $_POST['username'] : ''; 
	$password = isset($_POST['password']) ? $_POST['password'] : '';


	// 检验
	if(!$username || !$password)
	{
		$status = '用户名或密码不能为空！';
	}
	else
	{
		if (isset($_COOKIE['username'])) {
			$arr[$_COOKIE['username']] = $_COOKIE['password'];
		}
		// 判断用户名是否存在于数组中
		if(isset($arr[$username]))
		{
			if($password == $arr[$username])
			{
				// 开启session
				session_start();

				// 将用户存储到session中
				$_SESSION['username'] = $username;
				$_SESSION['password'] = $password;

				// 更新状态
				$status = '登录成功！';

				// 返回结果
				echo json_encode(
					array(
						"errno" => 0,
						"data" => array(
							"username" => $username,
							"status" => $status	
						)
					)	
				);

				// 终止执行
				exit();
			}
			else
			{
				$pStatus = 0;
				$status = '密码有误!';
			}
		}
		else
		{
			$uStatus = 0;
			// 否则用户名不存在
			$status = '用户名不存在!';
		}
	}


	// 执行关闭将状态结果返回
	echo json_encode(
		array(
			"errno" => 1,
			"data" => array(
				"status" => $status,
				"uStatus" => $uStatus,
				"pStatus" => $pStatus
				// "status" => $status	
			)
		)	
	);
	
?>