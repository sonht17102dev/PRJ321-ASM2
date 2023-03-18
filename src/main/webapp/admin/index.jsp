<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin page</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
<link
	href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link rel="stylesheet" href="../css/admin.css" type="text/css">
</head>
<body>
	<%
	Object o = session.getAttribute("user");
	if (o == null) {
		response.sendRedirect("../home.jsp");
	} else {
		String usm;
		usm = (String) o;
		String name = usm.split("@")[0];
		//System.out.println(name);
		String welcome = "Welcome " + name;
		//System.out.println(welcome);
	%>

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">


	<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#"><%=welcome%></a>
	<button class="navbar-toggler position-absolute d-md-none collapsed"
		type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
		aria-controls="sidebarMenu" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<input class="form-control form-control-dark w-100 rounded-0 border-0"
		type="text" placeholder="Search" aria-label="Search">
	<div class="navbar-nav">
		<div class="nav-item text-nowrap">
			<!-- <a class="nav-link px-3" href="#">Sign out</a> -->
			<form action="/PRJ321x-A2x/logout" method="post">
				<button
					class="bg-transparent border-0 fw-bold nav-link px-3"
					style="color: #ec8816" type="submit">Sign out</button>
			</form>
		</div>
	</div>
	</header>
	<div class="container-fluid ">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
			<div class="position-sticky pt-3 sidebar-sticky menu">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"> <span data-feather="home"
							class="align-text-bottom"></span> Dashboard
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="file" class="align-text-bottom"></span> Staff
							manager
					</a></li>

				</ul>
			</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom ">
				<h1 class="h2">Dashboard</h1>
			</div>
			<div class="tbl">
				<div>
					<img src="../images/banner-admin.jpg" class="banner">
				</div>
				<div class="title-table">
					<h2>Members of the team</h2>
				</div>
				<div class="table-responsive ">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">StudentID</th>
								<th scope="col">Class</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1,001</td>
								<td>random</td>
								<td>data</td>
								<td>placeholder</td>
							</tr>
							<tr>
								<td>1,001</td>
								<td>random</td>
								<td>data</td>
								<td>placeholder</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
			</main>
		</div>
	</div>
	<!-- use to dropdown responsive-->

	<script
		src="https://getbootstrap.com/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<%
	}
	%>
</body>
</html>