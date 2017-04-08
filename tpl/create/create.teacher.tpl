<section class="container cnt-inner m-n">
	<content-title></content-title>
	<div class="main-cnt">
		<div class="panel panel-default">
			<div class="panel-heading">Please fill in the relevant information of the teacher</div>
			<div class="panel-body">
				<form name="create" class="create-container" ng-submit="createTeacher()">

					<div class="row">
						<div class="col-sm-2">
							<label for="teacher_name">Teacher name</label>
						</div>
						<div class="col-sm-6">
							<input class="form-control" type="text" id="teacher_name" placeholder="请输入教师姓名" ng-required="true" ng-minLength="2" ng-model="data.teacher_name" name="teacher_name">
						</div>
						<div class="col-sm-4" ng-show="create.teacher_name.$dirty && create.teacher_name.$invalid"><span class="alert alert-danger">请输入教师姓名</span></div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<label class="" for="">Gender</label>
						</div>
						
						<div class="col-sm-6">
							<label for="male">
							<input  type="radio" id="male" name="gender" checked ng-model="data.gender">
							male</label>
							<label for="female"><input  type="radio" id="female" name="gender" ng-model="data.gender">
							female</label>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-2">
							<label for="specialty">Specialty</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control" id="specialty" ng-model="data.specialty" name="specialty">
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
							<label class="" for="branch">Branch</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control"  id="branch" ng-model="data.branch">
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
							<label class="" for="education">Education</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control" id="education" ng-model="data.education">
								<option value="zk">专科</option>
								<option value="bk">本科</option>
								<option value="ss">硕士</option>
								<option value="bs">博士</option>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<label class="" for=" education">Post</label>
						</div>
						
						<div class="col-sm-6">
							<select class="form-control" id=" post" ng-model="data.post">
								<option value="jx">见习</option>
								<option value="zj">助教</option>
								<option value="js">讲师</option>
								<option value="fjs">副教授</option>
								<option value="js">教授</option>
								<option value="ys">院士</option>
							</select>
						</div>
					</div>



					<div class="row">
						<div class="col-sm-2">
							<label class="" for="Introduction">Personal profile</label>
						</div>
						
						<div class="col-sm-6">
							<textarea class="form-control" id="Introduction" rows="3" placeholder="个人简介" ng-model="data.introduction"></textarea>
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