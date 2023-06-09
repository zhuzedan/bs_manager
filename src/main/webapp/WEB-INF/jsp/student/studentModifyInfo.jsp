<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生修改信息</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/majorManage.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/verifyPhone.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_student.jsp" />
	</div>
	
 	<div class="right_col" role="main" style="height:656px">
		<div class="row">
			<div class="col-md-8">
				<!-- <h4>修改信息</h4> -->
				<ul class="list-inline">
					<li>信息管理</li>
					<li>/</li>
					<li>修改个人信息</li>
				</ul>
				<hr>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/student/modifyInfoToDb" method="post">
					<input type="hidden" name="id" id="id" value="${sessionScope.student.id }" />
					<input type="hidden" name="studentNo" id="studentNo" value="${sessionScope.student.studentNo }" />
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">姓名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studentName" name="studentName" value="${sessionScope.student.studentName }" >
						</div>
					</div>
						
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">性别:</label>
						<div class="col-sm-10">
							<select class="form-control" id="sex" name="sex">
								<option value="${sessionScope.student.sex }">${sessionScope.student.sex }</option>
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">当前专业:</label>
						<div class="col-sm-10">
							<input class="form-control" name="majorOld" id="majorOld" value="${sessionScope.student.majorName }"  readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">专业:</label>
						<div class="col-sm-10">
							<select class="form-control" id="major" name="major">
								<option value="">请选择...</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">年级:</label>
						<div class="col-sm-10">
							<select class="form-control" id="grade" name="grade">
								<option value="${sessionScope.student.grade }">${sessionScope.student.grade }</option>
								<option value="2017级">2017级</option>
								<option value="2018级">2018级</option>
								<option value="2019级">2019级</option>
							</select>
						</div>
						<%-- <div class="col-sm-10">
							<input type="text" class="form-control" id="grade" name="grade" value="${sessionScope.student.grade }">
						</div> --%>
					</div>	
						
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">联系电话:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="phone" name="phone" value="${sessionScope.student.phone }" onblur="verify();">
						</div>
					</div>	
					
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">邮箱:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="email" name="email" value="${sessionScope.student.email }" onblur="verify();">
						</div>
					</div>	
						
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="col-sm-5"></div>
							<button type="submit" class="btn btn-primary col-sm-2">确认修改</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>