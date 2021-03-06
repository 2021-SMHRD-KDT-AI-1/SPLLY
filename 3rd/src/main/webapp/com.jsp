<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/com.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">

    <!-- Wrapper -->
        <div id="wrapper" class="fade-in">
            
             <!-- Nav -->
             <nav id="nav1">
                <ul>
                   <li><a href="index.html">Home</a></li>
                   <li><a href="left-sidebar.html">Search</a></li>
                   <li><a href="com.jsp">community</a></li>
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

            <!-- Header -->
                <header id="header">
                    <a href="com.jsp" class="logo">Massively</a>
                </header>

            <!-- Nav -->
                <nav id="nav">
                    <ul class="links">
                        <li class="active"><a href="com_main.jsp">Main</a></li>
                    </ul>
                    
                    <ul class="icons">
                        <!-- <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li> -->
                        <li>
                            
                        </li>
                    </ul>
                </nav>

            <!-- Main -->
                <div id="main">

                    <!-- Featured Post -->
                        <article class="post featured">
                            <header class="major">
                                
                                <span class="date">July 24, 2021</span>
                                <h2><a href="#">바다뷰 플레이리스트</a></h2>
                                <p>내용을 입력하세요</p>
                                
                            </header>
                            <a href="#" class="image main"><img src="images/oceanview.jpg" alt="" /></a>
                            <a href="#" class="image main"><img src="images/oceanview.jpg" alt="" /></a>
                            <a href="#" class="image main"><img src="images/oceanview.jpg" alt="" /></a>
                            <ul class="actions special">
                              <li></li>
                              <li><a href="#" class="button large">인스타그램 가기</a></li>
                              <div id="like-container">
                                <svg id="svg-container" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="5 16 60 60"></svg>
                                <div class="btn">Like</div>
                              </div>
                            </ul>
                        </article>

                    <!-- Posts -->
                        <div class = "play">
                            <h2>스플리님에게 추천된 플레이리스트입니다.</h2>
                           
                        </div>
                        <section class="posts_com">
                            <article>
                                <a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
                                <header>
                                    <h2><a href="#">플레이리스트1</a></h2>
                                </header>
                            </article>
                            <article>
                                <a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
                                <header>
                                    <h2><a href="#">플레이리스트2</a></h2>
                                </header>
                            </article>
                            <article>
                                <a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
                                <header>
                                    <h2><a href="#">플레이리스트3</a></h2>
                                </header>
                                
                            </article>
                           
                        </section>

                    <!-- Footer -->
                        
                            <!--<div class="pagination">
                                <a href="#" class="previous">Prev</a>
                                <a href="#" class="page active">1</a>
                                <a href="#" class="page">2</a>
                                <a href="#" class="page">3</a>
                                <span class="extra">&hellip;</span>
                                <a href="#" class="page">8</a>
                                <a href="#" class="page">9</a>
                                <a href="#" class="page">10</a>
                                <a href="#" class="next">Next</a>
                            </div>
                        -->
                    
                        <!-- Footer -->
					<footer id="footer">
						<section>
							<form method="post" action="#">
								<div class="fields">
									
									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="3"></textarea>
									</div>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</form>
						</section>
						<section class="split contact">
							<section class="alt">
								<h3>Address</h3>
								<p>1234 Somewhere Road #87257<br />
								Nashville, TN 00000-0000</p>
							</section>
							<section>
								<h3>Phone</h3>
								<p><a href="#">(000) 000-0000</a></p>
							</section>
							<section>
								<h3>Email</h3>
								<p><a href="#">info@untitled.tld</a></p>
							</section>
							<section>
								<h3>Social</h3>
								<ul class="icons alt">
									<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
								</ul>
							</section>
						</section>
					</footer>

                </div>

            
        </div>

    <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
    
            let isActive = false;
            const sparkles = [
              { cx: "5" , cy: "22", class: "s-1"},
              { cx: "20", cy: "10", class: "s-2"},
              { cx: "35", cy: "5" , class: "s-3"},
              { cx: "50", cy: "10", class: "s-4"},
              { cx: "63", cy: "22", class: "s-5"}
            ];
            const heartAnimationIn = [
              { transformOrigin: '50% 50%', transform: 'scale(1) rotate3d(0, 0, 1, 0deg) translate(0, 0)', fill: 'grey' }, 
              { transformOrigin: '50% 50%', transform: 'scale(.9) rotate3d(0, 0, 1, 0deg) translate(0, 0)', fill: 'indianRed' },
              { transformOrigin: '50% 50%', transform: 'scale(.8) rotate3d(0, 0, 1, 0deg) translate(0, 0)', fill: 'indianRed' },
              { transformOrigin: '50% 50%', transform: 'scale(1.05) rotate3d(0, 0, 1, -8deg) translate(0, -4px)', fill: 'indianRed' },
              { transformOrigin: '50% 50%', transform: 'scale(1.1) rotate3d(0, 0, 1, 8deg) translate(0, -8px)', fill: 'indianRed' }, 
              { transformOrigin: '50% 50%', transform: 'scale(1.1) rotate3d(0, 0, 1, 8deg) translate(0, -6px)', fill: 'red' }, 
              { transformOrigin: '50% 50%', transform: 'scale(1.05) rotate3d(0, 0, 1, -8deg) translate(0, -4px)', fill: 'red' },
              { transformOrigin: '50% 50%', transform: 'scale(1) rotate3d(0, 0, 1, 8deg) translate(0, -4px)', fill: 'red' },
              { transformOrigin: '50% 50%', transform: 'scale(1) rotate3d(0, 0, 1, 0deg) translate(0, -2px)', fill: 'red' }
            ];
            const heartAnimationOut = [
              { transformOrigin: '50% 50%', transform: 'scale(1) rotate3d(0, 0, 1, 0deg) translate(0, -2px)',fill: "red"},
              { transformOrigin: '50% 50%', transform: 'scale(1) rotate3d(0, 0, 1, 0deg) translate(0, 0)',fill: "grey"}
            ];
            const sparkleAnimation = [
              { transformOrigin: '50% 50%', transform: 'scale(1) translate(0, 0)', opacity: '1', fill: 'white'},
              { transformOrigin: '50% 50%', transform: 'scale(1.1) translate(0, -4px)', opacity: '1', fill: 'white'},
              { transformOrigin: '50% 50%', transform: 'scale(1.2) translate(0, -5px)', opacity: '1', fill: 'gold'},
              { transformOrigin: '50% 50%', transform: 'scale(1.1) translate(0, 0px)', opacity: '1', fill: 'gold'},
              { transformOrigin: '50% 50%', transform: 'scale(1.2) translate(0, 3px)', opacity: '1', fill: 'red'},
              { transformOrigin: '50% 50%', transform: 'scale(1) translate(0, 8px)', opacity: '0', fill: 'red'}
            ];
            const sparkleGroupAnimation = [
              { transformOrigin: '50% 50%', transform: 'scale(0)'},
              { transformOrigin: '50% 50%', transform: 'scale(0)'},
              { transformOrigin: '50% 50%', transform: 'scale(0)'},
              { transformOrigin: '50% 50%', transform: 'scale(.5)'},
              { transformOrigin: '50% 50%', transform: 'scale(.5)'},
              { transformOrigin: '50% 50%', transform: 'scale(1)'}
            ];
            const heartAnimationTiming = {duration: 500, iterations: 1, fill: "forwards" };
            const sparkleAnimationTiming = {duration: 600, iterations: 1, fill: "forwards" };
            const sparkleGroupAnimationTiming = {duration: 400, iterations: 1, fill: "forwards" };
            const btn = document.querySelector(".btn");
            const svg = document.querySelector("#svg-container");
            const sparkleGroup = document.createElementNS("http://www.w3.org/2000/svg", "g");
            sparkleGroup.setAttributeNS(null, "id", "sparkle-group");
            const heart = document.createElementNS("http://www.w3.org/2000/svg", "path");
            heart.setAttributeNS(null, "d", "M50.4,27.3c-4.5-4.5-11.8-4.5-16.3,0c-4.5-4.5-11.8-4.5-16.3,0s-4.5,11.8,0,16.3l15,15c0.7,0.7,1.9,0.7,2.6,0 l15-15C54.9,39.1,54.9,31.8,50.4,27.3z");
            heart.setAttributeNS(null, "fill", "grey");
            svg.appendChild(sparkleGroup);
            svg.appendChild(heart);
            
            const animateHeart = (isAnimated) => {
              if (isAnimated) {
                heart.animate(heartAnimationIn, heartAnimationTiming);
                animateSparkles();
              } else {
                heart.animate(heartAnimationOut, heartAnimationTiming);
              }
            }
            const toggleLike = (target) => {
              if (target.classList.contains("active")) {
                target.classList.remove("active");
                target.textContent = "Like";
                isActive = false;
                animateHeart(isActive);
              } else {
                target.classList.add("active");
                target.textContent = "Unlike";
                isActive = true;
                animateHeart(isActive);
              }
              return isActive;
            }
            setTimeout( () => toggleLike(btn), 100);
            
            btn.addEventListener("click", (e) => toggleLike(e.target), false);
            
            const addSparkles = (svgArray) => {
              svgArray.forEach(x => {
                let sparkle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
                sparkle.setAttributeNS(null, "r", "1");
                sparkle.setAttributeNS(null, "cx", x.cx);
                sparkle.setAttributeNS(null, "cy", x.cy);
                sparkle.setAttributeNS(null, "class", x.class);
                sparkleGroup.appendChild(sparkle);
              })
            }
            addSparkles(sparkles);
            const animateSparkles = () => {
              sparkleGroup.animate(sparkleGroupAnimation, sparkleGroupAnimationTiming)
              const sp1 = document.querySelector('.s-1');
              const sp2 = document.querySelector('.s-2');
              const sp3 = document.querySelector('.s-3');
              const sp4 = document.querySelector('.s-4');
              const sp5 = document.querySelector('.s-5');
              setTimeout( () => sp1.animate(sparkleAnimation, sparkleAnimationTiming), 100);
              setTimeout( () => sp2.animate(sparkleAnimation, sparkleAnimationTiming), 200);
              setTimeout( () => sp3.animate(sparkleAnimation, sparkleAnimationTiming), 300);
              setTimeout( () => sp4.animate(sparkleAnimation, sparkleAnimationTiming), 400);
              setTimeout( () => sp5.animate(sparkleAnimation, sparkleAnimationTiming), 500);
            }
          </script>

</body>
</html>