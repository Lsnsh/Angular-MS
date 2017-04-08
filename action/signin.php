<?php
	// 建立数据库连接
	$cnt = mysql_connect('localhost', 'root', 'root');
	// 选择数据库
	mysql_select_db('stums');
	// 设置字符编码
	mysql_query('SET NAMES UTF8');


	// 初始化状态
	$status = '';
	$uStatus = '';
	$pStatus = '';

	// 获取POST请求参数
	$username = isset($_POST['username']) ? $_POST['username'] : ''; 
	$password = isset($_POST['password']) ? $_POST['password'] : '';


	// 页面传递数据都不为空时，进行才查询数据库
	if ($username !='' && $password !='') {
		// 拼接sql语句
		$sql = "SELECT * FROM USERS WHERE USERNAME = '".$username."' AND PASSWORD = ".$password;
		// 传递sql语句，查询数据
		$rs = mysql_query($sql);
		// 提取结果
		$result = mysql_fetch_assoc($rs);

		// 判断是否有查询结果
		if ($result) {
			// 开启session
			session_start();

			// 将用户存储到session中
			$_SESSION['username'] = $username;
			$_SESSION['password'] = $password;

			// 有结果表示查询到数据，更新状态
			$status = '登录成功!';

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
	// 否则判断用户名是否为空
	} if ($username != '') {
		// 不为空时，根据用户名查询数据库
		$sql1 = "SELECT * FROM USERS WHERE USERNAME = '".$username."'";
		// 传递sql语句，查询数据
		$rs1 = mysql_query($sql1);
		// 提取结果
		$result1 = mysql_fetch_assoc($rs1);

		

		if ($result1) {
			// 查询到结果，判断密码是否为空
			if (!$password) {
				$pStatus = 1;

			 	$status = '密码不能为空!';
			} else {
				$pStatus = 0;
				$status = '密码有误!';
			}
		} else {

			$uStatus = 0;
			// 否则用户名不存在
			$status = '用户名不存在!';
		}
	} else {
		
		$uStatus = 1;
		// 否则用户名为空
		$status = '用户不能为空!';
	}
	
	// echo $status;

	// 执行关闭将状态结果返回
	echo json_encode(
		array(
			"errno" => 1,
			"data" => array(
				"uStatus" => $uStatus,
				"pStatus" => $pStatus
				// "status" => $status	
			)
		)	
	);
	
?>