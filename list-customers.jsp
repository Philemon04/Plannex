<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html><%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plannex</title>
<!-- <style>
.bg {
  background-image: url('https://assets.bizclikmedia.net/1800/3eb7889182dd47f70f445f0e16f3591a:e4b74fc371efa3cf6f5942192c548b8c/gettyimages-1259086543-0-jpg.webp');

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
<body class="d-flex">
	<div class="container">
		<div class="p-3 mx-auto flex-column col-md-10">
			<h2 class="text-center text-primary">Plannex CRM - Customer Relationship Manager</h2>
			<hr />
			<br />
			<div class="card border-primary">
				<h5 class="card-header bg-primary text-light">Customer List</h5>
				<div class="card-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customers}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<tr>
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.lastName}</td>
								<td>${tempCustomer.email}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
			<br/>
			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" />
		</div>

	</div>
</body>
</html>