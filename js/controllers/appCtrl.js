angular.module('appCtrl', ['signinCtrl', 'signupCtrl', 'headerCtrl', 'sidebarCtrl'])
	.controller('appCtrl', appCtrl)
	.run(run)

// app控制器 => 页面最先加载的控制器
function appCtrl($scope, $http) {
	// console.log('appCtrl loaded...');

	// 发送异步请求 => 获取侧边栏数据
	$http
		.get("data/sidebar.json")
		.success(function(res) {
			// 数据请求成功后判断状态是否正确
			// errno = 0 => success
			// errno = 1 => fail
			if (res && res.errno === 0) {
				// 更新作用域数据
				$scope.menu = res.data;
			} else {
				// 抛出错误提示信息
				return console.log('get data/sidebar.json failed.', res);
			}
		})
}

function run ($rootScope, $http, $location) {
	// 监听signin/signup控制器的username消息
	// 将用户登录成功后传递的用户名存储在作用域下
	$rootScope.$on('username', function(event, data) {
		// 存储登录成功用户名
		$rootScope.username = data;
	})

	// 发送请求 => 检测用户是否登录
	$http
		.get('action/check.login.php')
		.success(function(res) {
			if (res.data && res.errno === 0) {
				// console.log('login successful.');
				// 如果登录过，将用户名存储到作用域下
				$rootScope.username = res.data.username;

				// 更新路由，跳转主页
				$location.path('/');
			} else {
				// console.log('Not logged in, jump to login page.');
				// 否则未登录跳转，登录页面
				$location.path('/signin');
			}
		})

	// 监听状态路由改变事件
	$rootScope.$on('stateChangeSuccess', function() {
		// 状态路由改变时，检测是否登录
		if ($rootScope.username === undefined) {
			// 未登录跳转登录页面
			$location.path('/signin');
		}
	})
}