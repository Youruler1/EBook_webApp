<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Edit Profile</h4>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>


						<form action="update_profile" method="post">
							<input type="hidden" value="${userobj.id}" name="id">
							<div class="form-group">
								<label for="fname">Enter full name</label> <input type="text"
									class="form-control" id="fname" aria-describedby="fnameHelp"
									required="required" name="fname" value="${userobj.name}">
							</div>

							<div class="form-group">
								<label for="email">Email address</label> <input type="email"
									class="form-control" id="email" aria-describedby="emailHelp"
									required="required" name="email" value="${userobj.email}">
							</div>

							<div class="form-group">
								<label for="phno">Phone Number</label> <input type="tel"
									class="form-control" id="phno" aria-describedby="phnoHelp"
									required="required" name="phno" value="${userobj.phno}">
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" required="required"
									name="password">
							</div>


							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>