// 配置发布后的默认文件夹路径
fis.match('*', {
	// 阶段使用local-deliver插件
	deploy: fis.plugin('local-deliver', {
		// 指定发布的路径
		// 当前设置为php服务器路径下
		to: 'D:/Program Files/ApacheServer/htdocs/ngMs-static'
	})
});
// // 设置编译后的文件路径为相对路径
fis.hook('relative');
// 让所有文件，都使用相对路径。
fis.match('**', { relative: true });

// 编译less文件
fis.match('**/app.less', {
	parser: 'less',
	rExt: '.css'
});