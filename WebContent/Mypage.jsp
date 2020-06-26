<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.*" %>
<%@ page import="VO.*" %>
<%@ page import="java.util.*" %>
<%
	if(session.getAttribute("no") == null){
		response.sendRedirect("login.html");
	}else{
%>
<!DOCTYPE html>
<html>
<head>
    <meta name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title></title>
   <style type="text/css">

        @import url("css/template.css");
        #contents {
        	width: 100%;
        }
        h3, h2 {
        	margin: 0px;
        	padding: 0px;
        }
        #header {
        	height: 8%;
        	background-color: red;
        }
        #subheader {
        	height: 5%;
        	background-color: blue;
        	position: relative;
        }
        #subtitle {
        	margin: 0px;
        }
        #profileImage {
        	padding: 10px;
        	width: 20%;
        	background-color: red;
        	float: left;
        }
        #profilePic {
        	width: 100%;
        }
        #profileDesc {
        	width: 70%;
        	background-color: green;
        	float: left;
        }

       	#contents {
       		height: 30%;
       		background-color: grey;
       	}
       	#wrotePagesNum {
       		width: 23%;
       		height: 100%;
       		background-color: yellow;
       		margin: 0px 10px;
       		float: left;
       	}
       	#likesNum {
       		width: 23%;
       		height: 100%;

       		background-color: yellow;
       		margin: 0px 50px;
       		float: left
       	}
       	#commentsNum {
       		width: 23%;
       		height: 100%;

       		background-color: yellow;
       		margin: 0px 10px;
       		float: right;

       	}
       	#userActivies {
       		width: 90%;
       		height: 50%;
       		background-color: blue;
       		float: left;
       	}
       	#activityNum {
       		height: 50%;
       		background-color: green;
       	}
       	#wrotePages {
       		width: 100%;
       		background-color: blue;
       		padding: 20px;
       		float: left;
       		margin-bottom: 20px;
       	}
       	#indivPages {
       		background-color: red;
       		width: 90%;
       		margin: 3px 0px;
       		padding: 10px;
       	}
       	#Userfeed {
       		height: 43%;
       		overflow: scroll;
       	}
   </style>
</head>
<body>
<div id="header"><h2 id="title">따옴</h2></div>
<div id="subheader"><h3 id="subtitle">profile</h3></div>
<div id="contents">
	<div id="profileImage"><img id="profilePic" src="./img/profileImage.png"></div>
	<div id="profileDesc">
		<div id="name">이름</div>
		<div id="userName">김이박</div>
	</div>
	<div id="userActivies">
		<div id="wrotePagesNum"><p>작성글</p><div id="activityNum">33</div></div>
		<div id="likesNum"><p>좋아요<div id="activityNum">33</div></p></div>
		<div id="commentsNum"><p>댓글<div id="activityNum">33</div></p></div>
	</div>
</div>
<div id="Userfeed">
	<div id="wrotePages">
		<p>내가 쓴 글</p>
		<div id='indivPages'>글1</div>
		<div id='indivPages'>글2</div>
		<div id='indivPages'>글3</div>
		<div>더보기..</div>
	</div>
	<div id="wrotePages">
		<p>내가 쓴 글</p>
		<div id='indivPages'>글1</div>
		<div id='indivPages'>글2</div>
		<div id='indivPages'>글3</div>
		<div>더보기..</div>
	</div>
	<div id="wrotePages">
		<p>내가 쓴 글</p>
		<div id='indivPages'>글1</div>
		<div id='indivPages'>글2</div>
		<div id='indivPages'>글3</div>
		<div>더보기..</div>
	</div>
</div>
<div id="navigation">
    <img src="img/homeButton.png" class="icon" onclick="main()"/>
    <img src="img/listButton.png" class="icon" onclick="list()"/>
    <img src="img/writeButton.png" class="icon" onclick="write1()"/>
    <img src="img/profileButton.png" class="icon" onclick="mypage()"/>
</div>
</body>
</html>

<script>
    var main = () => {
        location.href = "main.html"
    }
    var list = () => {
        location.href = "PoemList.jsp"
    }
    var write1 = () => {
        location.href = "write.html"
    }
    var mypage = () => {
        location.href = "Mypage.jsp"
    }
</script>
<%
}
%>