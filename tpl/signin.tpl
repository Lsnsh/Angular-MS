<div class="app-login" ng-controller="signinCtrl">
	<div class="login-wrapper">
		<h4>User Login</h4>
		<div>
			<div><strong>Sign in to get in touch</strong></div>
			<form name="loginForm" ng-submit="goSignIn()">
				<div class="form-group col-sm-12"
					ng-class="{
						'has-error': loginForm.username.$dirty && loginForm.username.$invalid || status.uStatus !== '',
						'has-success': loginForm.username.$dirty && loginForm.username.$valid && status.uStatus === ''
					}"
					>
					<input type="text" class="form-control" ng-required="true" ng-model="data.username" name="username" id="user_name" placeholder="Username" ng-minLength="3" ng-maxLength="16">
					<span class="glyphicon  form-control-feedback" aria-hidden="true"
					ng-class="{
						'glyphicon-remove': loginForm.username.$dirty && loginForm.username.$invalid || status.uStatus !== '',
						'glyphicon-ok': loginForm.username.$dirty && loginForm.username.$valid && status.uStatus === ''
					}"
					></span>
				</div>

				<div class="danger-info">
					<span class="text-danger" ng-bind="info.u[status.uStatus]"></span>
				</div>

				<div class="form-group col-sm-12"
					ng-class="{
						'has-error': loginForm.password.$dirty && loginForm.password.$invalid || status.pStatus !== '',
						'has-success': loginForm.password.$dirty && loginForm.password.$valid && status.pStatus === ''
					}"
					>
					<input type="password" class=" form-control" ng-required="true" ng-model="data.password" name="password" id="pass_word" placeholder="Password" ng-minLength="6" ng-maxLength="30" ng-keyDown="keydown()">
					<span class="glyphicon form-control-feedback" aria-hidden="true"
					ng-class="{
						'glyphicon-remove': loginForm.password.$dirty && loginForm.password.$invalid || status.pStatus !== '',
						'glyphicon-ok': loginForm.password.$dirty && loginForm.password.$valid && status.pStatus === ''
					}"
					></span>
				</div>

				<div class="danger-info">
					<span class="text-danger" ng-bind="info.p[status.pStatus]"></span>
				</div>

				<div class="form-group col-sm-12">
					<input ng-disabled="loginForm.$invalid" type="submit" class="form-control btn btn-primary" value="Log in"></input>
				</div>

				<div class="create-user">
					<span>Do not have an account?</span>
					<div class="form-group col-sm-12">
						<a href="#/signup">
							<input type="button" class="btn btn-default form-control" value="Create an account">
						</a>
					</div>
				</div>
			</form>
			<div class="copyright text-qh">
				<p>Web app framework base on Bootstrap and AngularJS</p>
				<span>© 2014</span>
			</div>
		</div>
	</div>
</div>