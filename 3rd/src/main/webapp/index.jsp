
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.memberVO"%>
<%@page import="VO.PlayListVO"%>
<%@page import="DAO.SongDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Playlist</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/style.css" />

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="homepage is-preload">
	<%
		memberVO vo = (memberVO)session.getAttribute("memberinfo");
		//vo = new memberVO("dmswl","ansdmswl","0000","dkahffkd");
		SongDAO dao = new SongDAO();
		ArrayList<PlayListVO> list = new ArrayList<PlayListVO>();
		ArrayList<PlayListVO> summerlist = new ArrayList<PlayListVO>();
		list = dao.PlayList();
		summerlist = dao.SUList();
		int i = 0;
	  %>
	
	  
	<div id="page-wrapper">


		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>
						<a href="index.html" id="logo">���ø�</a>
					</h1>
					<hr />
					<p>��ſ��� �´� �پ��� �÷��̸���Ʈ�� ������!</p>
				</header>
				<footer>
					<a href="#banner" class="button circled scrolly">Start</a>
				</footer>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="upload.jsp">Upload</a></li>
					<li><a href="#">Search</a></li>
					<li><a href="right-sidebar.html">community</a></li>
					<li><a href="My page.html">My Page</a>
						<ul>
							<li><a href="#">��õ���� �÷��̸���Ʈ ���</a></li>
							<li><a href="#">���� �̹���</a></li>
							<li><a href="#">���� ���̺귯��</a></li>

							<!--
										<li>
											<a href="#">And a submenu &hellip;</a>
											<ul>
												<li><a href="#">Lorem ipsum dolor</a></li>
												<li><a href="#">Phasellus consequat</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
											</ul>
										</li>
										
										<li><a href="#">Veroeros feugiat</a></li>
									-->
						</ul></li>
					<%if(vo == null){ %>
					<li><a href="sign_in.jsp">�α���</a></li>
					<%}else{%>
					<li><a href="LogoutCon.do">�α׾ƿ�</a></li>
					<li><a href="update.jsp">ȸ����������</a></li>
					<% if(vo.getId().equals("admin")){%>

					<li><a href="selectMember.jsp">��üȸ������</a></li>
					<% }%>
					<!-- ���� �մ� ��üȸ������ �޴��� 'admin'������ �� �� �ְ� �Ͻÿ�. -->
					<%} %>

				</ul>
			</nav>

		</div>

		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>
					Hi. You're looking at <strong>���ø�</strong>.
				</h2>
				<p>�ֽ� �÷��̸���Ʈ</p>
			</header>
		</section>

		<!-- Carousel -->
		<form>
			<section class="carousel">
				<div class="reel">
					<p>�ֽ� �÷��̸���Ʈ</p>
					<% for(i=(list.size()-1); i>(list.size()-11); i--){%>
					<article>
						<a href="" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
						<header>
							<h3 style="color: black;">
								<a href="PlayListCon.do?name=<%=list.get(i).getPlaylist_name()%>" name="playlistname"><%=list.get(i).getPlaylist_name()%></a>
							</h3>
						</header>
						<p><%=list.get(i).getSong_tag()%></p>
					</article>
						<%} %>

				</div>
			</section>

			<!-- Main2 -->
			<section class="carousel">
				<div class="reel">
					<p>������ ��︮�� �÷��̸���Ʈ</p>
					<% for(int j=0; j<summerlist.size(); j++){%>
					<article>
						<a href="" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
						<header>
							<h3 style="color: black;">
								<a href="playlist.jsp" name="playlistname2"><%=summerlist.get(j).getPlaylist_name()%></a>
							</h3>
						</header>
						<p><%=summerlist.get(j).getSong_tag()%></p>
					</article>
						<%} %>
				</div>
			</section>

			<!-- Main3 -->
			<section class="carousel">
				<div class="reel">
					<p>Pick by ���ø�DJ</p>
					<article>
						<a href="#" class="image featured"><img src="images/pic01.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ1</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic02.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ2</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic03.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ3</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic04.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ4</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic05.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ5</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic01.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ6</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic02.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ7</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic03.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ8</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic04.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ9</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

					<article>
						<a href="#" class="image featured"><img src="images/pic05.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">�÷��̸���Ʈ10</a>
							</h3>
						</header>
						<p>Commodo id natoque malesuada sollicitudin elit suscipit
							magna.</p>
					</article>

				</div>

			</section>
		</form>
		<!-- community -->
		<div class="wrapper style1">

			<section id="features" class="container special">
				<header>
					<h2>�ٸ������ � �÷��̸���Ʈ�� ��õ�޾�����?</h2>
					<p>�ٸ������ �̹����� �÷��̸���Ʈ�� ���� ���� ��õ���� �÷��̸���Ʈ�� ������ ���ƿ�!</p>
				</header>
				<div class="row">
					<article class="col-4 col-12-mobile special">
						<a href="#" class="image featured"><img src="images/pic07.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">������</a>���� �÷��̸���Ʈ
							</h3>
						</header>
						<p>���� �̹����� �Բ� �÷��̸���Ʈ �ֱ�</p>
					</article>
					<article class="col-4 col-12-mobile special">
						<a href="#" class="image featured"><img src="images/pic08.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">������</a>���� �÷��̸���Ʈ
							</h3>
						</header>
						<p>���� �̹����� �Բ� �÷��̸���Ʈ �ֱ�</p>
					</article>
					<article class="col-4 col-12-mobile special">
						<a href="#" class="image featured"><img src="images/pic09.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">������</a>���� �÷��̸���Ʈ
							</h3>
						</header>
						<p>���� �̹����� �Բ� �÷��̸���Ʈ �ֱ�</p>
					</article>
				</div>
			</section>

		</div>

		<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">

					<!-- Tweets -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon brands fa-twitter circled">
								<span class="label">Tweets</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="tweet">
									Amet nullam fringilla nibh nulla convallis tique ante sociis
									accumsan. <span class="timestamp">5 minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Hendrerit rutrum quisque. <span class="timestamp">30
										minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Curabitur donec nulla massa laoreet nibh. Lorem praesent
									montes. <span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Lacus natoque cras rhoncus curae dignissim ultricies. Convallis
									orci aliquet. <span class="timestamp">5 hours ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Posts -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon solid fa-file circled">
								<span class="label">Posts</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Nisl fermentum integer</a>
										</h3>
									</header>
									<span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Phasellus portitor lorem</a>
										</h3>
									</header>
									<span class="timestamp">6 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Magna tempus consequat</a>
										</h3>
									</header>
									<span class="timestamp">Yesterday</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Feugiat lorem ipsum</a>
										</h3>
									</header>
									<span class="timestamp">2 days ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Photos -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon solid fa-camera circled">
								<span class="label">Photos</span>
							</h2>
						</header>
						<div class="row gtr-25">
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic10.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic11.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic12.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic13.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic14.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic15.jpg"
									alt="" /></a>
							</div>
						</div>
					</section>

				</div>
				<hr />
				<div class="row">
					<div class="col-12">

						<!-- Contact -->
						<section class="contact">
							<header>
								<h3>Nisl turpis nascetur interdum?</h3>
							</header>
							<p>Urna nisl non quis interdum mus ornare ridiculus egestas
								ridiculus lobortis vivamus tempor aliquet.</p>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-linkedin-in"><span
										class="label">Linkedin</span></a></li>
							</ul>
						</section>

						<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved.</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>