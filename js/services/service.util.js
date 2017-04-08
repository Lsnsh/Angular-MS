// util => 辅助服务
angular.module('utilService', [])
	.service('util', function($location) {
		/**
		 * 传递对象 => 返回属性名称组成的数组
		 * @param  {[Object]} obj [description]
		 * @return {[Array]}     [description]
		 */
		this.createKeysArr = function (obj) {
			var arr = [];
			for (var k in obj) {
				arr.push(k);
			}
			return arr;
		}
		/**
		 * 分页按钮事件 => 切换页码，改变路由
		 * 只适用于分页组件(指令)
		 * @param  {[Object]} e [事件对象]
		 * @return {[void]}   [description]
		 */
		this.togglePage = function(e) {
			// this => 执行此方法作用域，
			// 一般是控制器，该控制器需要具备
			// pageNum => 页码属性 url => baseurl

			// 获取绑定事件的a标签元素
			var a = $(e.currentTarget);
			// 获取aria-label属性值
			var val = a.attr('aria-label');
			// 根据不同的属性值，决定上一页/下一页
			if (val === 'Previous') {
				this.pageNum--;
				if (this.pageNum <= 0) {
					this.pageNum = 1;
				}
			} else if (val === 'Next') {
				this.pageNum++;
				if (this.pageNum >= 6) {
					this.pageNum = 5;
				}
			}
			// 改变路由
			$location.path(this.url +'/'+ this.pageNum);
		}
	})