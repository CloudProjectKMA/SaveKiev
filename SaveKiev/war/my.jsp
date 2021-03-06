 <%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Анкета</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrolly.min.js"></script>
<script src="js/jquery.onvisible.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<noscript>
	<link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-desktop.css" />
	<link rel="stylesheet" href="css/style-noscript.css" />
</noscript>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body class="left-sidebar">

	<!-- Header -->
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>
					<a id="logo">Моя сторінка</a>
				</h1>
			</header>
		</div>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="index.html">Головна</a></li>
				<li><a href="">Еко-життя</a>
					<ul>
						<li><a href="food.html">Поїсти</a></li>
						<li><a href="rest.html">Відпочити</a></li>
						<li><a href="battery.html">Здати батарейки</a></li>
						<li><a href="recycling.html">Здати вторсировину</a></li>
					</ul></li>
				<li><a href="events.html">Події</a></li>
				<li><a href="my.html">Моя сторінка</a></li>
				<li><a>Вихід</a></li>
			</ul>
		</nav>

	</div>

	<!-- Main -->
	<div class="wrapper style1">

		<div class="container">
			<div class="row 200%">
				<div class="4u" id="sidebar">
					<hr class="first" />
					<section>
						<header>
							<h3 align="center">Фото</h3>
							<a href="#" class="image featured"><img
								src="images/avatar.jpg"></a>
						</header>
						<p></p>
						<footer>
							<form enctype="multipart/form-data" method="post">
								<p>
									<input type="file" name="foto" accept="image/jpeg,image/png">
									<input type="submit" value="Готово">
								</p>
							</form>

						</footer>
					</section>
					<hr />
					<section>
						<header>
							<h3 align="center">Додати відомості</h3>
						</header>
						<p>Знаходь друзів за інтересами!</p>
						<div class="row 50% no-collapse">
							<div class="4u">
								<a href="#" class="image fit"></a>
								<h4>Музика</h4>
							</div>
							<div class="8u">

								<p>Додай улюблені гурти та виконавців</p>
							</div>
						</div>
						<div class="row 50% no-collapse">
							<div class="4u">
								<a href="#" class="image fit"></a>
								<h4>Фільми</h4>
							</div>
							<div class="8u">

								<p>Згадай фільми, які тобі до душі</p>
							</div>
						</div>
						<div class="row 50% no-collapse">
							<div class="4u">
								<a href="#" class="image fit"></a>
								<h4>Книги</h4>
							</div>
							<div class="8u">

								<p>Порадь книги, які змінили твоє життя</p>
							</div>
						</div>
						<div class="row 50% no-collapse">
							<div class="4u">
								<a href="#" class="image fit"></a>
								<h4>Хоббі</h4>
							</div>
							<div class="8u">

								<p>Розкажи, чим займаєшся у вільний час</p>
							</div>
						</div>
						<footer>
							<a href="#" class="button">Додати</a>
						</footer>
					</section>
				</div>
				<div class="8u important(collapse)" id="content">
					<article id="main">
						<header>
							<% String userName = null;
                                String userMail = null;

							Cookie[] cookies =
							request.getCookies(); 
							if(cookies !=null){ 
							for(Cookie cookie :cookies){ 
							if(cookie.getName().equals("user"))
							 userName =cookie.getValue(); 
                             if(cookie.getName().equals("mail"))
							 userMail =cookie.getValue(); 
                      }
							 } 
							%>
							<h2>
								<a href="#"></a>Це твій профіль. Вітаємо!
							</h2>
							<p>Будь активним та не сумуй :)</p>
						</header>
						<section>
							<header>
							<p> Про мене:</p> 						
							<h3><srtong>Нікнейм: </strong> <i> <%=userName %></i></h3>
							<p></p>
							<h3><srtong>Пошта: </strong> <i><%=userMail %></i></h3>
							<p></p>
							<h3><srtong>Стать: </strong> <i>жінка</i></h3>
							<hr />
							<footer>

							<a href="#" class="button">Змінити пароль</a>
						</footer>
							</header>

						</section>
					</article>
				</div>
			</div>
			<hr />

		</div>

	</div>

	<!-- Кінець -->
	<!-- Кінець -->
	<div id="footer">
		<div class="container">
			<div class="row">
				<section class="12u">
					<header>
						<h2 class="icon fa-camera circled">
							<span class="label">Photos</span>
						</h2>
					</header>
					<div class="row 25% no-collapse">
						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev1.jpg" alt="" /></a>
						</div>
						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev6.jpg" alt="" /></a>
						</div>
						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev2.jpg" alt="" /></a>
						</div>

					</div>
					<div class="row 25% no-collapse">

						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev4.jpg" alt="" /></a>
						</div>

						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev3.jpg" alt="" /></a>
						</div>
						<div class="4u">
							<a href="#" class="image fit"><img
								src="images/kiev/kiev5.jpg" alt="" /></a>
						</div>

					</div>
				</section>
			</div>
			<hr />
			<div class="row">
				<div class="12u">

					<!-- Contact -->
					<section class="contact">
						<header>
							<h3>Є питання?</h3>
						</header>
						<p>Шукай нас у соціальних мережах.</p>
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span
									class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span
									class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span
									class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-vk"><span class="label">ВКонтакте</span></a></li>
							<li><a href="#" class="icon fa-google"><span
									class="label">Google</span></a></li>
							<li><a href="#" class="icon fa-whatsapp"><span
									class="label">Whatsapp</span></a></li>
						</ul>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
</html>