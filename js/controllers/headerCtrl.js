angular.module('headerCtrl', [])
	.controller('headerCtrl', headerCtrl);

// 头部控制器
function headerCtrl($scope, $rootScope, $location, $http) {
	$scope.user = {
		src: 'u_01.jpg'
	}
}