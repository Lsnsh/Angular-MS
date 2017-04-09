angular.module('signinCtrl', [])
	.controller('signinCtrl', signinCtrl)

// 用户登录控制器
function signinCtrl($scope, $http, $location) {
	// 提示信息对象
	$scope.info = {
		// 用户名相关
		u: [
			"用户名不存在!",
			"用户不能为空!"
		],
		// 密码相关
		p: [
			'密码有误!',
			"密码不能为空!"
		]
	}

	// 用户名密码状态对象
	$scope.status = {
		"uStatus": '',
		"pStatus": ''
	}

	// 用户登录事件
	$scope.goSignIn = function(e) {
		$http
			// 发送登录异步请求，传递登录信息
			.post('action/signin.php', $scope.data, {
				// 指定请求头
				headers: {'Content-Type':'application/x-www-form-urlencoded'},
				// 请求数据格式化
				transformRequest: function(obj){
				    var str = [];
				    for(var p in obj) {
				        str.push(
				        	encodeURIComponent(p)+
				        	"="+
				        	encodeURIComponent(obj[p]));
				    }
				    return str.join("&");
				}
			})
			.success(function(res) {
				if (res.data && res.errno === 0) {
					// 向父组件传递消息
					$scope.$emit('username', res.data.username);
					// 跳转路由
					$location.path('/');
				} else {
					$scope.status = res.data;
				}
			})
	}

	// 键盘事件 => 重置用户&密码状态对象
	$scope.keydown = function() {
		$scope.status = {
			"uStatus": '',
			"pStatus": ''
		}
	}

	// $scope.goSignIn = function(e) {
	// 	var xhr = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveObject('microsoft.XMLHTTP');

	// 	xhr.onreadystatechange = function() {
	// 		if (xhr.readyState === 4) {
	// 			if (xhr.status === 200) {
	// 				var result = xhr.responseText;

	// 				console.log(result)
	// 			}
	// 		}
	// 	}

	// 	xhr.open('POST', 'action/signin.php', true);
	// 	xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
	// 	xhr.send('uname='+$scope.data.username+'&upwd='+$scope.data.password);
	// }
}