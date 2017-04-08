<!-- <div class="user-tab pull-right"></div> -->
<section class="dashboard container m-n cnt-inner">
		<content-title></content-title>
		<div class="db-cnt main-cnt o-f-h">
			<div class="row">
				<div class="col-md-5 panel-num">
					<ul class="income clearfix m-n">
						<li ng-repeat="i in income" 
						class="pull-left text-center col-xs-6 m-b-md" 
						ng-if="!i.chart">
							<div ng-class="{
								'text-ql bg-white': $index == 0,
								'text-white bg-zs': $index == 1,
								'text-white bg-ql': $index == 2,
								'text-zs bg-white': $index == 3
							}">
								<h1 class="font-thin m-n">{{i.num}}</h1>
								<span class=" f-s"
								ng-class="{
									'text-bd': $index == 1 || $index == 2,
									'text-qh': $index == 0 || $index == 3

								}"
								>{{i.intro}}</span>
							</div>
						</li>
						<li ng-repeat="j in income" ng-if="j.chart" class="col-xs-12 income-chart">
							<div class="text-center bg-light-ldk">
								<h1 class="m-n font-thin text-zs">{{j.num}}</h1>
								<span class="text-qh f-s">{{j.intro}}</intro>
							</div>	
						</li>
					</ul>
					<div></div>
				</div>
				<div class="col-md-7 h-f">
					<!-- <div class="bg-light-dk chart-01" id=""></div> -->
					<div class="panel panel-default chart-01">
						<div class="panel-heading">Basic straight graph</div>
						<div class="panel-body">
							<div id="chart-01" style="height: 236px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<div class="panel panel-default chart-02">
						<div class="panel-heading">Stack bar graph</div>
						<div class="panel-body">
							<div id="chart-02" style="height: 261px;"></div>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="panel panel-default chart-03">
						<div class="panel-heading">Base pie chart</div>
						<div class="panel-body">
							<div id="chart-03" style="height: 261px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="wrapper bg-white">
				<div class="row tasks">
					<div class="col-md-6">
						<h4>Campus Activities</h4>
						<ul class="list-group">
							<li class="list-group-item b-n">
								<span class="item-label bg-ql"><i class="b-d-l-c-ql"></i>05/30</span>
								<a href>May Campus Singer Competition</a></li>
							<li class="list-group-item b-n">
								<span class="item-label bg-jhs"><i class="b-d-l-c-jhs"></i>10/25</span>
								<a href=>2016 Sakura art party notice</a>
							</li>
							<li class="list-group-item b-n">
								<spana class="item-label bg-zs"><i class="b-d-l-c-zs"></i>11/23</spana>
								<a href>To carry out the selection of ten strong stars announcement</a></li>
							<li class="list-group-item b-n">
								<span class="item-label bg-success"><i class="b-d-l-c-ss"></i>06/22</span>
								<a href>Organize the 3rd International Interdisciplinary Seminar</a>
							</li>
						</ul>
					</div>
					<div class="col-md-6 "></div>
				</div>
			</div>
		</div>
</section>