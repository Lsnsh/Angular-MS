angular.module('configRouter', [])
	.config(config)

function config($stateProvider, $urlRouterProvider) {
	
	$urlRouterProvider
		// 重定向路由
		// .when('/', '/app/dashboard')
		// 指定默认路由
		.otherwise('/app/dashboard');
	
	$stateProvider
		// 配置状态路由 
		// state(stateName, stateObj)
		// this => window
		.state('app', {
			// 此状态不会被显性的激活，只能被子状态隐性激活
			// abstract: true,
			// 状态路由规则
			url: '/app',
			// 模板地址
			templateUrl: 'tpl/app.tpl'
			// 控制器
			,controller: 'appCtrl'
		})
		// 用户登录
		.state('signin', {
			url: '/signin',
			templateUrl: 'tpl/signin.tpl',
			controller: 'signinCtrl'
		})
		// 用户注册
		.state('signup', {
			url: '/signup',
			templateUrl: 'tpl/signup.tpl',
			controller: 'signupCtrl'
		})
		
		// 仪表盘
		.state('app.dashboard', {
			url: '/dashboard',
			templateUrl: 'tpl/dashboard.tpl',
			controller: 'dashboardCtrl'
		})
		.state('app.createstudent', {
			url: '/createstudent',
			templateUrl: 'tpl/create/create.student.tpl',
			controller: 'createStudentCtrl'
		})
		.state('app.studentlist', {
			url: '/studentlist/:pageNum',
			templateUrl: 'tpl/list/list.student.tpl',
			controller: 'studentListCtrl'
		})
		.state('app.studentdetail', {
			url: '/studentdetail/:studentId',
			templateUrl: 'tpl/detail/detail.student.tpl',
			controller: 'studentDetailCtrl'
		})
		.state('app.createteacher', {
			url: '/createteacher',
			templateUrl: 'tpl/create/create.teacher.tpl',
			controller: 'createTeacherCtrl'
		})
		.state('app.teacherlist', {
			url: '/teacherlist/:pageNum',
			templateUrl: 'tpl/list/list.teacher.tpl',
			controller: 'teacherListCtrl'
		})
		.state('app.teacherdetail', {
			url: '/teacherdetail/:teacherId',
			templateUrl: 'tpl/detail/detail.teacher.tpl',
			controller: 'teacherDetailCtrl'
		})

	
}