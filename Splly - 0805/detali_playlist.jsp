<%@page import="VO.SongVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="VO.PlayListVO"%>
<%@page import="DAO.SongDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE HTML>
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

body {
  font-family: "Roboto", sans-serif;
  background: #eeeeee;
}

body {
  background: black;
}

/* Nav */

#nav {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    text-align: center;
    padding: 1.5em 0 1.5em 0;
    z-index: 1;
    overflow: hidden;
}

    #nav > ul {
        line-height: 0px;
        position: relative;
        display: inline-block;
        margin: 0;
        height: 21px;
        border-left: solid 1px #fff;
        border-right: solid 1px #fff;
    }

        #nav > ul:before, #nav > ul:after {
            content: '';
            display: block;
            width: 300%;
            position: absolute;
            top: 50%;
            margin-top: -2px;
            height: 5px;
            border-top: solid 1px #fff;
            border-bottom: solid 1px #fff;
        }

        #nav > ul:before {
            left: 100%;
            margin-left: 1px;
        }

        #nav > ul:after {
            right: 100%;
            margin-right: 1px;
        }

        #nav > ul > li {
            display: inline-block;
            margin: -9px 0.5em 0 0.5em;
            border-radius: 0.5em;
            padding: 0.85em;
            border: solid 1px transparent;
            -moz-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            -webkit-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            -ms-transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
            transition: color 0.35s ease-in-out, border-color 0.35s ease-in-out;
        }

            #nav > ul > li.active {
                border-color: rgba(192, 192, 192, 0.35);
            }

            #nav > ul > li > a, #nav > ul > li > span {
                display: block;
                color: inherit;
                text-decoration: none;
                border: 0;
                outline: 0;
                color: #fff;
            }

            #nav > ul > li > ul {
                display: none;
            }






.album-info {
    display: flex;
    
}
.album-info p {
    display: flex;
    flex-direction: column;
}

.album-info img {
    width: 180px;
}
.album-info > div{
    position: relative;
    padding: 30px;
}




























section {
    margin: 100px 56px;
    padding: 20px 56px;
    color: #303030;
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
    background: #faa700;
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
  border: 3px solid #f5ede1;
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
  color: #8a8a8a;
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
  color: #8a8a8a;
}
section h1 + span span:first-child {
  padding-right: 20px;
}
section p {
  margin-top: 15px;
}
section .album-tracks {
  background: rgba(100, 100, 100, 0.2);
  margin-top: 20px;
}












ol {
  list-style-type: none;
  padding: 20px 36px;
  font-weight: 500;
  margin: 0;
}
ol li {
  counter-increment: number;
  display: flex;
  flex-wrap: initial;
  align-items: center;
  align-content: initial;
  margin: auto;
  height: 100px;
  color: var(--dark);
  
}

ol li:hover {
    transition: all .3s;
    background-color: rgba(140, 140, 140, 0.2);
}
ol li span:not(:last-child) {
  margin-right: 2em;
}

ol li span:first-child {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    color: rgba(255, 255, 255, 0.8);
    width: 50%;

}

ol li span:nth-child(2) {
    width: 30%;

}

ol li:before {
    content: counter(number);
    margin-right: 2em;
    color: #8a8a8a;
    display: inline-block;
    text-align: end;
    width: 20px;

}















input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    float: left;
    color: white;
    display: inline;
    vertical-align: middle;    
    width: 15px;
    height: 100px;
    margin-right: 20px !important;
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





.actions {
    position: absolute;
    bottom: 0;
    left: 30px;
}

.album-tracks img {
    display: inline;
    line-height: 0;
    vertical-align: middle;
    width: 60px;
    height: 60px;
    margin-right: 30px;
}


.album-tracks > div {
  display: flex;
  padding: 18px 0 18px 36px;
  line-height: 30px;
  background: #faa700;
}

.album-tracks > div input {
  height: 30px;
}

.play-plus {
  margin-left: 30px;
  height: 26px;
  line-height: 26px !important;
  padding: 0 10px;
  border: 2px solid #fff;
  color: #fff;
  background: none;
  cursor: pointer;
  font: 400 13.3333px Arial;
}

.play-plus:hover {
  transition: all .2s;
  border: 2px solid #222;
  background: #222;
}

#plus-pop {
  z-index: 1002;
  position: fixed;
  display: none;
  justify-content: center;
  align-items: center;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.8);
  -webkit-backdrop-filter: saturate(180%) blur(5px);
  backdrop-filter: saturate(180%) blur(5px);
}
  #plus-pop.on {
    display: flex;  
  }

#plus-pop input { 
  z-index: 1003;
  position: absolute;
  left: 0;
  top: 0;
  visibility: hidden;
}

#plus-pop input:checked + label { 
  background: #faa700;
}

#plus-pop label { 
  position: absolute;
  left: 0;
  top: 0;
  color: #fff;
  display: inline-block;
  width: calc(100% - 30px); height: 70px;
  line-height: 70px;
  padding-left: 30px;
  cursor: pointer;
}

.plus-pop-wrap {
  border: 2px solid #fff;
  width: 500px;
}

.plus-pop-selet {
  max-height: 280px;
  overflow-y: auto;
}

.plus-pop-selet > div{
  position: relative;
  height: 70px;
}

.plus-pop-button {
  display: flex;
}

.plus-pop-button button {
  width: 50%;
  height: 70px;
  background: none;
  border: none;
  color: #fff;
  cursor: pointer;
  font: 400 13.3333px Arial;
  text-align: center;
}

.plus-pop-button div {
  width: 50%;
  color: #fff;
  cursor: pointer;
  font: 400 13.3333px Arial;
  text-align: center;
  line-height: 70px;
}

.plus-pop-button div:hover,
.plus-pop-button button:hover {
  transition: all .2s;
  background: #faa700;
}

html.on { overflow: hidden; }
   </style>


<body class="no-sidebar is-preload">
    <%
        ArrayList<SongVO> song = new ArrayList<SongVO>();
        song = (ArrayList<SongVO>)session.getAttribute("songvo");
    %>


    <form action="" method="post">

        <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="upload.html">Upload</a></li>
                    <li><a href="search.html">Search</a></li>
                    <li><a href="community.html">Community</a></li>
                    <li><a href="index.html">My Page</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
                 
            
        <!-- Playlist -->
            <section>
                <!-- Album Info -->
                <div class="album-info">
                    <img src="assets/img/pic03.jpg">
                    <div>
                        <h2>Ksdhf??? ??????????????????</h2>
                        <p>#asd, #asd, #asd</p>
                        <div class="actions">
                            <div class="play">Play(????????????)</div>
                        </div>
                    </div>    
                </div>
                    
                <!-- Album Tracks -->
                <div class="album-tracks">
                    <div>
                        <input type="checkbox" class="play-all" onclick="selectAll(this)">?????? ??????</input>
                        <script>
                            function selectAll(selectAll)  {
                                document.getElementsByName('input_check').forEach((checkbox) => {
                                    checkbox.checked = selectAll.checked;
                                })
                            }
                        </script>

                        <div class="play-plus" onclick="playPlusOpen()">????????????????????? ??????</div>
                        <script>
                            function playPlusOpen() {
                                document.getElementById('plus-pop').classList.add('on');
                                document.getElementsByTagName('html').item(0).classList.add('on');
                                                    
                            }	
                        </script>
                    </div>
                    <ol>
                        <%for(int i=0; i<song.size(); i++){ %>
                            System.Out.print(song.size());
                            <input type="checkbox" class="input_check" name="input_check"> <li> <span> <img src=<%=song.get(i).getAlbum_img() %>><%=song.get(i).getSong_name() %></span> <span><%=song.get(i).getSingers()%></span> <span>3:49</span> </li>
                        <%} %>
                    </ol>
                </div>

            </section>
        

        <!-- Playlist Add Popup -->
            <div id="plus-pop">
                <div class="plus-pop-wrap">
                    <div class="plus-pop-selet">
                        <div>
                            <input type="radio" id="huey" name="drone" value="huey" checked>
                            <label for="huey">Huey</label>
                        </div>

                        <div>
                            <input type="radio" id="dewey" name="drone" value="dewey">
                            <label for="dewey">Dewey</label>
                        </div>


                    </div>
                    <div class="plus-pop-button">
                        <div onclick="playPlusClose()">??????</div>
                        <script>
                            function playPlusClose() {
                                document.getElementById('plus-pop').classList.remove('on');
                                document.getElementsByTagName('html').item(0).classList.remove('on');						
                            }	
                        </script>
                        <button>??????</button>
                    </div>
                </div>
            </div>
                    
    </form>


</body>
</html>