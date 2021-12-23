<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传概要设计报告</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/topicManage4Teacher.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="_teacher.jsp" />
	</div>
	
	<div class="right_col" role="main" style="height:1200px">
		<div class="row">
			<div class="col-md-12">
				<!-- <h4>发布开题报告</h4> -->
				<ul class="list-inline">
					<li>进度管理</li>
					<li>/</li>
					<li>发布概要设计报告</li>
				</ul>
				<hr>
				<form role="form" class="form-horizontal" action="${pageContext.request.contextPath}/teacher/uploadGaiYao" method="post" enctype="multipart/form-data">
					<div class="col-md-3">
						<select class="form-control" id="topic4Teacher" name="topic4Teacher">
							<option value="">选择要发布的课题</option>
						</select>
					</div>
					<div class="col-md-2">
						<label class=" control-label">上传概要设计报告:</label>
					</div>
					<div class="col-md-4">
						<input type="file" id="file1" name="file1">
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary" id="submitButton" name="submitButton">提交</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>