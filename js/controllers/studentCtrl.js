angular.module('studentCtrl', [])
	.controller('createStudentCtrl', createStudentCtrl)
	.controller('studentListCtrl', studentListCtrl)
	.controller('studentDetailCtrl', studentDetailCtrl)

// 创建学生控制器
function createStudentCtrl($scope, $http, $location) {
	// 标题
	$scope.header = {
		title:'Create Student',
		subTitle: ''
	}

	// 表单键值
	$scope.data = {
		specialty: 'tj',
		branch: 'tj',
		grade: 'd1'
	}

	// 创建学生事件
	$scope.createStudent = function() {
		$http
			.post('action/create.student.php', $scope.data)
			// 成功回调函数
			.success(function(res) {
				if (res.data && res.errno === 0) {
					// 成功跳转学生列表
					$location.path('/app/studentlist/1');
				} else {
					return console.log('create failed: ', res);
				}
			})
	}

}

// 学生列表控制器
function studentListCtrl($scope, $http, $stateParams, $location, util) {
	// 标题
	$scope.header = {
		title:'Student List',
		subTitle: ''
	}

	// 列名和主键对象
	$scope.table = {
		columns: [
			'StuNo',
			'StuName',
			'Gender',
			'Specialty',
			'Branch',
			'Grade',
			'Introduction',
			'Action'
		],
		keyName: 'StuNo'
	}

	// baseurl
	$scope.url = '/app/studentlist';

	// 通过状态参数服务 => 获取页码
	$scope.pageNum = +$stateParams.pageNum;

	// 根据页码请求数据
	$http
		.get('action/list.student.php', {
			// 传递query
			params: {
				pageNum: $scope.pageNum
			}
		})
		// 成功回调函数
		.success(function(res) {
			if (res.data && res.errno === 0) {
				// 成功将数据存储在当前作用域下
				$scope.list = res.data;
			} else {
				return console.log('get studentlist failed: ', res);
			}
		})

	// 复制分页方法
	$scope.togglePage = util.togglePage;
}

// 学生详情控制器
function studentDetailCtrl($scope, $http, $stateParams, util) {
	// 标题
	$scope.header = {
		title:'Student Detail',
		subTitle: ''
	}

	// 获取页码
	$scope.stuId = $stateParams.stuId;

	// 根据学生id请求数据
	$http
		.get('action/detail.student.php', {
			params: {
				stuId: $scope.stuId
			}
		})
		// 成功回调函数
		.success(function(res) {
			if (res.data && res.errno === 0) {
				// 成功将学生信息存储
				$scope.stu = res.data;
				// 获取对象的key值数组
				$scope.keys = util.createKeysArr(res.data);
			} else {
				return console.log('get studentdetail failed: ', res);
			}
		})
}

