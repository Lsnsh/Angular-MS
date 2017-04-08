<section class="container cnt-inner m-n">
	<content-title></content-title>
	<div class="main-cnt">
		<div class="panel panel-default">
			<div class="panel-heading">Student information details</div>
			<table class="table">
				<tr ng-repeat="val in stu">
					<th class="col-sm-2">{{keys[$index]}}</th>
					<td class="col-sm-8">{{val}}</td>
				</tr>
			</table>
		</div>
	</div>
</section>