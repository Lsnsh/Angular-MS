angular.module('signupCtrl', [])
	.controller('signupCtrl', signupCtrl)

function signupCtrl($scope, $http, $location) {
	$scope.signStatus = false;

	// 用户注册
	$scope.goSignUp = function() {
		// 注册请求
		$http
			.post('action/regist.php', $scope.data, {
				headers: {'Content-Type':'application/x-www-form-urlencoded'},
				transformRequest: function(obj){
				    var str=[];
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
				if (res.data.status && res.errno === 0) {
					// 向父组件传递消息,注册成功，自动登录
					$scope.$emit('username', res.data.username);

					// 跳转首页
					$location.path('/app/dashboard');
				} else if (res.errno === 2){
					// res.errno => 2(用户名存在)
					// 更新错误提示
					$scope.errInfo = 'User name is too popular, please change one';
					// 更改注册状态
					$scope.signStatus = true;
				} else {
					return console.log('signup failed: ', res);
				}
			})
	}

	$scope.isCheck = function($event) {
	}
	$scope.goToCreate = function() {

	}
}