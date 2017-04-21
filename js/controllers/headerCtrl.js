angular.module('headerCtrl', [])
	.controller('headerCtrl', headerCtrl);

// 头部控制器
function headerCtrl($scope, $rootScope, $location, $http) {
	$scope.user = {
		src: 'u_01.jpg'
	}

	$scope.events = {
		toggleMenu: function(e) {
			$('.app-sidebar').addClass('fadeInLeft').toggle();
		}
	}

	$(window).on('resize', function(){
		if (document.documentElement.clientWidth >= 767) {
			$('.app-sidebar').show();
		} else {
			$('.app-sidebar').hide();
		}
	});
}