angular.module('directive', [])
	// 主体内容标题栏 => conetent-title
	.directive('contentTitle', function() {
		return {
			restrict: 'E',
			templateUrl: 'js/directive/content-title.tpl',
			link: function($scope, $element, $attrs) { }
			// 替换指令容器元素
			,replace: true
		}
	})
	
	// 表格 => content-table
	.directive('contentTable', function() {
		return {
			restrict: 'E',
			templateUrl: 'js/directive/content-table.tpl',
			link: function($scope, $element, $attrs) { }
			// 替换指令容器元素
			,replace: true
		}
	})

	// 分页 => content-paging
	.directive('contentPaging', function() {
		return {
			'restrict': 'E',
			templateUrl: 'js/directive/content-paging.tpl',
			link: function($scope, $element, $attrs) {}
			// 替换指令容器元素
			,replace: true
		}
	})