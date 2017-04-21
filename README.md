# Angular-MS
基于angular实现，后台管理系统，目前有登录、注册、图标、信息列表、添加、详情页。

### 构建
```
# 安装
npm install

# 发布 (需配置发布路径)
fis3 release
```
### *fis-conf.js*
``` javascript
// 配置发布后的默认文件夹路径
fis.match('*', {
    // deploy阶段使用local-deliver插件
    deploy: fis.plugin('local-deliver', {
        // 指定发布的路径
        // 当前设置为支持php的服务器路径下
        to: 'D:/Program Files/ApacheServer/htdocs/ng-ms-demo'
    })
});
```
## 预览
<div style="height:450px;"><img src="./preview/signin.png" alt="" style="width:200px;"></div>
<div style="height:450px;"><img src="./preview/signin.png" alt="" style="width:200px;"></div>

### 技术栈
<pre>
angular1.x
angular-ui-router
bootstrap
jquery
highcharts
less
fis3
</pre>
