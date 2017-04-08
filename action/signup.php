<?php
	// 建立数据库连接
	$cnt = mysql_connect('localhost', 'root', 'root');
	// 选择数据库
	mysql_select_db('stums');
	// 设置字符编码
	mysql_query('SET NAMES UTF8');



	// 初始化变量
	$status = '';

	// 获取POST请求的参数
	$userInfo = $_POST;

	// 判断是否有数据
	if ($userInfo) {
		// 获取用户名
		$username = $userInfo['username'];
		$password = $userInfo['password'];
		$cfmpassword = $userInfo['cfmpassword'];

		// 校验两次密码是否相同
		if ($password == $cfmpassword) {
			// 根据用户名，定义sql语句
			$sql = "SELECT * FROM USERS WHERE USERNAME = '".$username."'";
			// 查询数据库
			$rs = mysql_query($sql);
			// 提取结果
			$row = mysql_fetch_assoc($rs);

			if(!$row) {
				// 没查询到结果，进行添加操作
				$sql_add = "INSERT INTO USERS(username, password) VALUES('".$username."','".$password."')";

				$rs_add = mysql_query($sql_add);

				// 添加成功，返回结果数据
				if ($rs_add) {
					// 开启session
					session_start();

					// 将用户存储到session中
					$_SESSION['username'] = $username;

					echo json_encode(array(
						"errno" => 0,
						"data" => array(
							"username" => $username,
							"status" => $rs_add
						)
					));

					// 终止执行
					exit();
				}
			} else {
				// 否则表示用户名已经存在
				// 返回提示信息
				echo json_encode(array(
					"errno" => 2,
					"data" => array(
						"username" => $username
					)
				));

				// 终止执行
				exit();
			}
		}	
	}

	echo json_encode(array(
		"errno" => 1,
		"data" => array(
			"userInfo" => $userInfo
		)
	));
?>