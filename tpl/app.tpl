<!-- 注意ng-include指令创建js作用域，字符串需要加引号 -->
<!-- navbar -->
<div class="app-header navbar" ng-include="'tpl/public/header.tpl'" ng-controller="headerCtrl"></div>
<!-- /navbar -->

<!-- sidebar -->
<div class="app-sidebar" ng-include="'tpl/public/sidebar.tpl'" ng-controller="sidebarCtrl"></div>
<!-- /sidebar -->

<!-- content -->
<div class="app-content"><div ui-view></div></div>
<!-- /content -->

<!-- footer -->
<div class="app-footer fixed-bottom" ng-include="'tpl/public/footer.tpl'"></div>
<!-- /footer -->
