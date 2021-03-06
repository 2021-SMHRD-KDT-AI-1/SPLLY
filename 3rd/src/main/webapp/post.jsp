<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/com.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="is-preload">

    <!-- Wrapper -->
        <div id="wrapper" class="fade-in">
            
             <!-- Nav -->
             <nav id="nav1">
                <ul>
                   <li><a href="index.html">Home</a></li>
                   <li><a href="left-sidebar.html">Search</a></li>
                   <li><a href="com.html">community</a></li>
                   <li>
                      <a href="#">My Page</a>
                      <ul>
                         <li><a href="#">내가 추천받은 플레이리스트 목록</a></li>
                         <li><a href="#">내 이미지</a></li>
                         <li><a href="#">분석결과</a></li>
                         
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
                      </ul>
                   </li>
                   
                   <li><a href="no-sidebar.html">+ 플레이리스트 만들기</a></li>
                   <li><a href="sign_in.html">회원가입</a></li>
                   <li><a href="#">로그인</a></li>
                </ul>
             </nav>

            <!-- Intro -->
                <div id="intro">
                    <h1>스플리 커뮤니티</h1>
                    <!--<p>A free, fully responsive HTML5 + CSS3 site template designed by <a href="https://twitter.com/ajlkn">@ajlkn</a> for <a href="https://html5up.net">HTML5 UP</a><br />
                    and released for free under the <a href="https://html5up.net/license">Creative Commons license</a>.</p>
                    <ul class="actions">
                        <li><a href="#header" class="button icon solid solo fa-arrow-down scrolly">Continue</a></li>
                    </ul>-->
                </div>

            

            <!-- Footer -->
                <footer id="footer">
                    <section>
                        <form method="GET" action="com_main.jsp">
                            <div class="fields">
                                <div class="field">
                                    <label for="name">TITLE</label>
                                    <input type="text" name="name" id="name" />
                                </div>
                                <div class="field">
                                    <label for="email">Photo</label>
                                    <a href="#" class="image fit"><img src="#" alt="" /></a>
                                </div>
                                <div class="field">
                                    <label for="message">content</label>
                                    <textarea name="message" id="message" rows="3"></textarea>
                                </div>
								
                            </div>
							<!--
							<div class="star-rating space-x-4 mx-auto">
								<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
								<label for="5-stars" class="star pr-4">★</label>
								<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
								<label for="4-stars" class="star">★</label>
								<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
								<label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
								<label for="2-stars" class="star">★</label>
								<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
								<label for="1-star" class="star">★</label>
							</div>-->
						
                            <ul class="actions">
                                <li><input type="submit" value="등록하기" /></li>
                            </ul>
                        </form>
                    </section>

                </footer>

        </div>

    <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

</body>
</html>