<%@page import="VO.SongVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
      <title>OneMusicList</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <!--  <link rel="stylesheet" href="assets/css/main.css" />-->
      <!--  <link rel="stylesheet" href="assets/css/style2.css" />-->
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
   </head>
<style>
      @import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700");
:root {
  --color: #faa700;
  --color-light: #f5ede1;
  --dark: #a7a7a7;
  --dark: #8a8a8a;
  --darker: #303030;
  --sans-serif: "Roboto", sans-serif;
}

body {
  font-family: var(--sans-serif);
  background: #eeeeee;
}

body {
  background: black;
  }
.background {
  width: 100%;
  height: 56.25vw;
  background-color: black;
  position: absolute;
  top: 0;
  z-index: -1;
}
.background img {
  max-width: 100%;
  max-height: 100vh;
  box-shadow: inset 0px -17vw 30vw 1vw #131313;
}
.background + section {
  margin-top: 60vmin;
  background: transparent;
  --dark: rgba(white, .5);
  --dark: rgba(white, .6);
  --darker: rgba(white, .8);
}
.background + section .bookmark {
  border-color: rgba(255, 255, 255, 0.2);
}
.background + section .bookmark svg {
  fill: #fff;
}
.background + section .album-tracks {
  background: rgba(255, 255, 255, 0.1);
  border: none;
}

section {
  background: #fafafa;
  margin: 100px 56px;
  padding: 20px 56px;
  color: var(--darker);
  color: rgba(255, 255, 255, 0.8);
}
section .album-info:after {
  content: " ";
  display: block;
  height: 0;
  clear: both;
}
section .album-art {
  float: left;
  width: 220px;
  margin-right: 20px;
  margin-bottom: 20px;
}
section .album-art * {
  border-radius: 3px;
}
section .album-art img {
  width: 100%;
  margin-bottom: 10px;
  margin-top: -80px;
  box-shadow: 0 5px 60px -3px rgba(0, 0, 0, 0.18);
}
section .play {
  display: flex;
  flex-wrap: initial;
  justify-content: center;
  align-items: center;
  align-content: initial;
  color: white;
  background: var(--color);
  padding: 10px;
  text-transform: uppercase;
}
section .bookmark {
  display: flex;
  flex-wrap: initial;
  justify-content: center;
  align-items: center;
  align-content: initial;
  width: 48px;
  height: 48px;
  border: 3px solid var(--color-light);
  margin-left: 10px;
}
section .album-details > * {
  padding: 10px 0;
}
section h2 {
  display: flex;
  flex-wrap: initial;
  justify-content: initial;
  align-items: center;
  align-content: initial;
  color: var(--dark);
  font-size: 16px;
  font-weight: 500;
  text-transform: uppercase;
}
section h2 img {
  width: 24px;
  border-radius: 50%;
  margin-right: 10px;
}
section h1 {
  font-size: 50px;
  font-weight: 300;
  word-wrap: break-word;
}
section h1 + span {
  color: var(--dark);
}
section h1 + span span:first-child {
  padding-right: 20px;
}
section p {
  margin-top: 15px;
}
section .album-tracks {
  background: #f8f8f8;
  border: 1px solid #efefef;
  margin-top: 20px;
}
@media (max-width: 800px) {
  section {
    margin: 100px 36px 36px 36px;
  }
}
@media (max-width: 700px) {
  section .album-art {
    width: 100%;
  }
  section .album-art img {
    width: auto;
    max-width: 100%;
    margin: -100px auto 10px auto;
    display: block;
  }
  section .album-details {
    float: left;
    max-width: 100%;
  }
}
@media (max-width: 550px) {
  section {
    margin: 100px 20px 20px 20px;
    padding: 20px 16px;
  }
  section ol {
    padding: 16px;
  }
}

ol {
  list-style-type: none;
  padding: 20px 36px;
  font-weight: 500;
}
ol li {
  counter-increment: number;
  display: block;
  flex-wrap: initial;
  justify-content: space-between;
  align-items: center;
  align-content: initial;
  margin: auto;
  height: 100px;
  color: var(--dark);
  
}
ol li span:not(:last-child) {
  margin-right: 2em;
}
@media (max-width: 700px) {
  ol li span:not(:last-child) {
    margin-right: 1em;
  }
}
ol li span:first-child {
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
  color: var(--darker);
}
ol li:before {
  content: counter(number);
  margin-right: 2em;
  color: var(--dark);
  display: inline;
  text-align: end;
  width: 20px;
}


.actions {
  display: flex;
  flex-wrap: initial;
  justify-content: initial;
  align-items: initial;
  align-content: initial;
  
}

input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 20px 0;
    padding: initial;
    border: initial; 
      float: left;
    color: white;
    display: inline;
    vertical-align: middle;    
    width: 50px;
    height: 18px
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: inherit;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline;
    text-align: left;
    appearance: auto;
    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: inherit;
    color: white;
   
}
img {
    border: 0;
    line-height: 0;
    font-size: 0;
    display: inline;
    vertical-align: middle;
    margin : inherit;
}
img[Attributes] {
    width: 60px;
    aspect-ratio: auto 60 / 60;
    height: 60px;
}
   </style>
   <body class="no-sidebar is-preload">
   <%
      ArrayList<SongVO> song = new ArrayList<SongVO>();
    song = (ArrayList<SongVO>)session.getAttribute("songvo");
      %>
                                       
      <div class="background"></div>
      <section>
      <div class="album-info">
      
         <div class="actions">
            <div class="play">Play(전체재생)</div>
            <!-- <div class="bookmark">
            <svg xmlns="http://www.w3.org/2000/svg" fill="#faa800" height="24" viewbox="0 0 24 24" width="24">
               <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2zm0 15l-5-2.18L7 18V5h10v13z"></path>
               <path d="M0 0h24v24H0z" fill="none"></path>
            </svg>
            </div> -->
         </div>
         </div>
         <!--  <div class="album-details">
         <h2> <img src="https://68.media.tumblr.com/avatar_edbd71e8c8ac_128.png"/>Skillet</h2>-->
         <h1>dfdffdfd</h1><span> <span>태그 </span><span>fdfsfsdfsdd</span></span>
         
         <!-- </div> -->
      </div>
      <div class="album-tracks" >
         <ol>
         <%for(int i=0; i<song.size(); i++){ %>
             System.Out.print(song.size());
            <input type="checkbox" class="input_check" name="input_check"> <li> <span> <img width="60" height="60" src=<%=song.get(i).getAlbum_img() %>> <%=song.get(i).getSong_name() %></span><span><%=song.get(i).getSingers()%></span><span>3:49</span></li>
         <%} %>
         </ol>
      </div>
      </section>
                           
                        

   </body>
</html>