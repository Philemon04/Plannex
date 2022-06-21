<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plannex</title>
<!-- <style>
.bg {
  background-image: url('https://blog.capterra.com/wp-content/uploads/2019/10/CAP-US-Header-10-CRM-Features-and-Why-You-Need-Them-1200x400-DLVR_US_1200x400_DLVR.png');

  height: 100vh; 

  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style> -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="p-3 mx-auto flex-column col-md-8">

			<h2 class="text-center text-primary">Plannex CRM - Customer Relationship
				Manager</h2>
			<hr />
			<div class="card border-primary">
				<div class="card-header bg-primary text-white">Add Customer</div>
				<div class="card-body">
					<form:form action="saveCustomer" cssClass="form-horizontal"
						method="post" modelAttribute="customer">

						<!-- need to associate this data with customer id -->
						<form:hidden path="id" />

						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label form-label">First
								Name</label>
							<div class="col-md-9">
								<form:input path="firstName" class="form-control"
									required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-md-3 control-label">Last
								Name</label>
							<div class="col-md-9">
								<form:input path="lastName" class="form-control" required="true" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input path="email" class="form-control" required="true" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button class="btn btn-primary">Submit</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>