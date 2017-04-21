<!-- 左侧标题栏 -->
<div class="navbar-header header-title">
	<a href="#/"><i class="fa fa-btc"></i><span>AngularMs</span></a>
</div>
<div class="menu-btn" ng-click="events.toggleMenu($event)"></div>
<!-- 右侧导航栏 -->
<div class="nav-collaspe box-shadow header-bar hidden-xs">
	<!-- 搜索框 -->
	<form class="navbar-form navbar-left bar-form">
		<div class="input-group">
			<input type="text" name="" placeholder="Search projects...">
			<span class="input-group-btn">
				<button class="btn btn-sm" type="submit"><i class="fa fa-search"></i></button>
			</span>
		</div>
	</form>
	<!-- 功能栏 -->
	<ul class="navbar-nav nav bar-ul pull-right">
		<!-- 消息提醒 -->
		<li class="bell dropdown">
			<a href class="dropdown-toggle" id="dm_02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="icon-bell fa-fw ">
				</i>
				<span class="badge bell-num">2</span>
			</a>
			<div class="panel panel-default dropdown-menu dp-menu dp-md animated fadeInUp" aria-labelledby="dm_02">
				<ul class="list-group">
					<li class="list-group-item">
						<div class="panel-heading">
							<strong>You have <span>2</span> notifications</strong>
						</div>
					</li>
					<li class="list-group-item">
						<a href>
							use Bootstrap dropdown.js
							<small class="text-muted">10 minutes ago</small>
						</a>
					</li>
					<li class="list-group-item">
						<a href>
							1.0 initial released
							<small class="text-muted">-1 minutes ago</small>
						</a>
					</li>
				</ul>
				<div class="panel-footer">
					<a href>
						See all the notifications
					</a>
				</div>
			</div>
		</li>
		<!-- 用户头像 -->
		<li class="user dropdown">
			<a href class="dropdown-toggle" id="dm_03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="user-img">
					<img src="img/{{user.src}}" alt="">
					<i></i>
				</span>
				<span>{{username}}</span>
				<b class="caret"></b>
			</a>
			<div class="panel dropdown-menu animated fadeInRight dp-menu" aria-labelledby="dm_03">
			<ul class="list-group " >
				<a href="action/logout.php" class="list-group-item">Logout</a>
			</ul>
			</div>
		</li>
	</ul>
</div>