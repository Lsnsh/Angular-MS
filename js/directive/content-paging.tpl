<nav aria-label="Page navigation" class="pull-right m-r-lg">
	<ul class="pagination">
	<li>
		<a href aria-label="Previous" ng-click="togglePage($event)">
		<span aria-hidden="true">&laquo;</span>
	</a>
	</li>
	
	<li ng-repeat="i in [1,2,3,4,5]" ng-class="{'active': pageNum === i}">
		<a ng-href="#{{url}}/{{i}}" ng-bind="i"></a>
	</li>

	<li>
		<a href aria-label="Next" ng-click="togglePage($event)">
	<span aria-hidden="true">&raquo;</span>
	</a>
	</li>
	</ul>
</nav>