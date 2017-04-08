angular.module('sidebarCtrl', ['dashboardCtrl', 'studentCtrl', 'teacherCtrl'])
	.controller('sidebarCtrl', sidebarCtrl)

// 侧边栏控制器
function sidebarCtrl($scope) {
	// 下拉菜单
	// ##点击子菜单项会收起菜单
	// a => 菜单项 ul => 子菜单 ，同级
	// 事件绑定的容器元素应该绑定给a => 菜单项
	// 之前绑定给它们共同的容器元素
	$scope.dropSidebar = function(e, cls) {
		// 获取当前菜单项
		var item = $(e.currentTarget);
		// 判断是否有子菜单
		if (item.parent().hasClass(cls)) {
			// 切换菜单项对应的菜单下拉
			item.siblings('ul').stop().slideToggle()
			// 每次切换的时候会将其他菜单项收起
			.parent().siblings().find('ul').slideUp();
		}
	}
}