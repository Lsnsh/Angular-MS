<table class="table table-hover">
	<thead class="list-title">
		<th ng-repeat="column in table.columns" ng-bind="column"></th>
	</thead>

	<tbody>
		<tr ng-repeat="item in list">
			<td ng-repeat="value in item" ng-bind="item.date === value ? (value | date: 'yyyy-MM-dd') : item.gender === value ? (value === 1 ? '男' : '女') : value"></td>
			<td >
				<a ng-href="#/app/teacherdetail/{{item[table.keyName]}}">详情</a>
				<a ng-href="#/app/teacheredit/{{item[table.keyName]}}">编辑</a>
				<a ng-href="#/app/teacherdelete/{{item[table.keyName]}}">删除</a>
			</td>
		</tr>
	</tbody>
</table>