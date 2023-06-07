<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="htmlcss bootstrap aside menu, vertical, sidebar nav menu CSS examples" />
<meta name="description"
	content="Bootstrap 5 sidebar navigation menu example" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>

<!-- ======= Icons used for dropdown (you can use your own) ======== -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">

<style type="text/css">
.py-2 {
	padding-top: 0.5rem !important;
	padding-bottom: 100.5rem !important;
	background-color: #615f5f;
	position: fixed;
}

.py-3 {
	padding-top: 0rem !important;
	padding-bottom: 50rem !important;
	background-color: #FFFFFF;
	padding-left: 9.9rem;
}

a {
	color: #FFFFFF;
	text-decoration: underline;
}

.card {
	border-radius: 0.1rem;
}
</style>


<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {

		document.querySelectorAll('.sidebar .nav-link').forEach(
				function(element) {

					element.addEventListener('click', function(e) {

						let nextEl = element.nextElementSibling;
						let parentEl = element.parentElement;

						if (nextEl) {
							e.preventDefault();
							let mycollapse = new bootstrap.Collapse(nextEl);

							if (nextEl.classList.contains('show')) {
								mycollapse.hide();
							} else {
								mycollapse.show();
								// find other submenus with class=show
								var opened_submenu = parentEl.parentElement
										.querySelector('.submenu.show');
								// if it exists, then close all of them
								if (opened_submenu) {
									new bootstrap.Collapse(opened_submenu);
								}

							}
						}

					});
				})

	});
	// DOMContentLoaded  end
</script>


</head>
<body class="bg-light">
	<div class="row">
		<aside class="col-lg-3">
			<nav class="sidebar card py-2 mb-4">
				<ul class="nav flex-column" id="nav_accordion">
					<li class="nav-item has-submenu"><a class="nav-link" href="#">
							Admin Module<i class="bi small bi-caret-down-fill"></i>
					</a>
						<ul class="submenu collapse">
							<li><a class="nav-link" href="getuser">Add User</a></li>
							<li><a class="nav-link" href="#">Add Batch </a></li>
							<li><a class="nav-link" href="#">Add sylombus</a></li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="#"> Project
							Tracking</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> course
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">
							Employee Details </a></li>
					<li class="nav-item has-submenu"><a class="nav-link" href="#">
							Report Module <i class="bi small bi-caret-down-fill"></i>
					</a>
						<ul class="submenu collapse">
							<li><a class="nav-link" href="#">Attendance </a></li>
							<li><a class="nav-link" href="#">performance </a></li>
							<li><a class="nav-link" href="#">Session-wise </a></li>
							<li><a class="nav-link" href="#">consolidated</a></li>
						</ul></li>
				</ul>
			</nav>
		</aside>

	</div>


</body>
</html>