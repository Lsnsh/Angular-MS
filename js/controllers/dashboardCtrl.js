angular.module('dashboardCtrl', [])
	.controller('dashboardCtrl',dashboardCtrl)


function dashboardCtrl($scope) {
	// 标题对象
	$scope.header = {
		title:'Dashboard',
		subTitle: 'Welcome to angulr application'
	}

	// 各年级人数
	$scope.income = [
		{
			num: "5815",
			intro: "First grade",
			state: 1
		},
		{
			num: "4930",
			intro: "Second grade"
		},
		{
			num: "4997",
			intro: "Third grade",
			state: 1
		},
		{
			num: "5781",
			intro: "Fourth grade",
			state: 1
		},
		{
			chart:"60",
			num: "21523",
			intro: "The total number of each grade"
		}
	]

	// 图表配置对象
	// 直线图
	$scope.chart_01 = {
		series: [
			{
				data: [123,32,23,45,45,123,43,21,55,77,53,213,66],
			}
		],
		color: '#000',
		title: {
			text:''
		},
		yAxis: {
			title: {
				text: ''
			}
		},
		legend: {
			enabled: false
		},
		credits: {
			enabled: false
		}
	}

	// 堆叠条形图
	$scope.chart_02 = {
		chart: {
            type: 'bar'
        },
        title: {
            text: 'Fail the top ten courses'
        },
        xAxis: {
            categories: ['2016', '2015', '2014', '2013', '2012']
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Fail the sum of the number of people'
            }
        },
        legend: {
            reversed: true
        },
        plotOptions: {
            series: {
                stacking: 'normal'
            }
        },
        series: [
	        {
	            name: 'Quantum Mechanics',
	            data: [30, 21, 34, 27, 26]
	        }, {
	            name: 'Analog Circuit',
	            data: [22, 32, 23, 12, 21]
	        }, {
	            name: 'functions of real variable',
	            data: [23, 14, 24, 12, 15]
	        }, {
	            name: 'topology',
	            data: [13, 14, 34, 12, 25]
	        }, {
	            name: 'Compiler Principles',
	            data: [23, 14, 34, 22, 35]
	        }, {
	            name: 'science of civil law',
	            data: [33, 24, 24, 42, 35]
	        }, {
	            name: 'Statistics',
	            data: [43, 43, 24, 52, 65]
	        }
        ]
	}

	// 圆饼图
	$scope.chart_03 = {
		chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '2016年各专业人数涨幅占比'
        },
        tooltip: {
            headerFormat: '{series.name}<br>',
            pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            type: 'pie',
            name: '各专业人数涨幅占比',
            data: [
                ['Software engineering', 45.0],
                ['Mechanical Engineering', 26.8],
                {
                    name: 'Business Administration',
                    y: 12.8,
                    sliced: true,
                    selected: true
                },
                ['civil Engineering', 8.5],
                ['Accounting', 6.2],
                ['其他', 0.7]
            ]
        }]
	}


	// 为图标容器执行各自的配置对象
	$('#chart-01')
		.highcharts($scope.chart_01);

	$('#chart-02')
		.highcharts($scope.chart_02);

	$('#chart-03')
		.highcharts($scope.chart_03);

	// console.log('dashboardCtrl loaded...');
}
