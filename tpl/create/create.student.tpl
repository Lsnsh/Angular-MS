<section class="container cnt-inner m-n">
	<content-title></content-title>
	<div class="main-cnt">
		<div class="panel panel-default">
			<div class="panel-heading">Please fill out student information</div>
			<div class="panel-body">
				<form name="create" class="create-container" ng-submit="createStudent()">

					<div class="row">
						<div class="col-sm-2">
							<label for="stuName">StuName</label>
						</div>
						<div class="col-sm-6">
							<input class="form-control" type="text" id="stuName" placeholder="请输入学生姓名" ng-required="true" ng-minLength="2" ng-model="data.stuName" name="stuName">
						</div>
						<div class="col-sm-4" ng-show="create.stuName.$dirty && create.stuName.$invalid"><span class="alert alert-danger">请输入用户名</span></div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<label class="" for="">Gender</label>
						</div>
						
						<div class="col-sm-6">
							<label for="male" class="radio-label">
							<input  type="radio" id="male" name="gender" ng-model="data.gender" value="male"><i
							ng-class="{
							'checked': data.gender === 'male',
							'b-d-sl': data.gender === 'male'
							}"></i>男</label>

							<label for="female" class="radio-label"><input  type="radio" id="female" name="gender" ng-model="data.gender" value="female"><i
							ng-class="{
							'checked': data.gender === 'female',
							'b-d-sl': data.gender === 'female'
							}"></i>女</label>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-2">
							<label for="Specialty">Specialty</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control" id="Specialty" ng-model="data.specialty" name="specialty">
								<option value="rj">软件技术</option>
								<option value="tj">统计学</option>
								<option value="kj">会计</option>
								<option value="aq">信息安全</option>
								<option value="gl">工商企业管理</option>
							</select>
						</div>
					</div>



					<div class="row">
						<div class="col-sm-2">
							<label class=" " for="Branch">Branch</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control"  id="Branch" ng-model="data.branch" name="branch">
								<option value="rj">软件分院</option>
								<option value="tj">统计分院</option>
								<option value="kj">会计分院</option>
								<option value="aq">信息安全分院</option>
								<option value="gl">工商企业管理分院</option>
							</select>
						</div>
					</div>



					<div class="row">
						<div class="col-sm-2">
							<label class=" " for="Grade">Grade</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control" id="Grade" ng-model="data.grade" name="grade">
								<option value="d1">大一</option>
								<option value="d2">大二</option>
								<option value="d3">大三</option>
								<option value="d4">大四</option>
								<option value="ss">实习</option>
							</select>
						</div>
					</div>



					<div class="row">
						<div class="col-sm-2">
							<label class="" for="Introduction">Introduction</label>
						</div>
						
						<div class="col-sm-6">
							<textarea class="form-control" id="Introduction" rows="3" placeholder="描述" ng-model="data.introduction" name="introduction"></textarea>
						</div>
					</div>



					<div class="row">
						<div class="col-sm-2 col-sm-offset-2">
							<input  type="submit" value="create" class="btn btn-primary">
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</section>