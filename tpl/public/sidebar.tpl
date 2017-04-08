<div class="sidebar-wrapper">
	<ul class="sidebar-menu">
		<li ng-repeat="item in menu" ng-class="{'item-title': item.isTitle, 'line': item.isLine, 'menu-item': !item.isTitle, 'hasMenu': item.childMenu.length > 0}">

			<a ng-href="{{item.link}}" ng-if="!item.isTitle && !item.isLine" ng-click="dropSidebar($event, 'hasMenu')">
				<i ng-class="{'glyphicon': item.iconClass}" class="{{item.iconClass}} {{item.cls}} icon"></i>
				<span class="item-type {{item.fw}}">{{item.type}}</span>
				<span class="badge pull-right {{item.bellCls}}">{{item.bellNum != 0 ? item.bellNum : ''}}</span>
			</a>

			<span ng-if="item.isTitle">{{item.type}}</span>

			<ul ng-if="item.childMenu.length > 0">
				<li ng-repeat="c in item.childMenu">
					<a ng-href="{{c.link}}">{{c.type}}
						<span ng-class="{'badge': c.bellNum != 0 ? c.bellNum : false}" class="{{c.bellCls}} pull-right" ng-if="c.bellNum != 0">{{c.bellNum}}</span>
					</a>
				</li>
			</ul>

		</li>
		
	</ul>
	<div class="schedule">
		<div class="text-field">
			<span>Milestone</span>
			<span class="pull-right">10%</span>
		</div>
		<div class="progress">
			<div class="progress-bar bg-ql" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width:10%;"></div>
		</div>
		<div class="text-field">
			<span>Release</span>
			<span class="pull-right">5%</span>
		</div>
		<div class="progress">
			<div class="progress-bar bg-zs" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width:5%;"></div>
		</div>
	</div>
</div>