<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>B A N D N O T E</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>

	<nav class="navbar navbar-default">
        <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed"
             data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
             aria-expanded="false">
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             </button>
             <a class="navbar-brand" href="main.jsp" style="height: 40px; margin-top: -5px;">
    			<img src="images/logo1.png" alt="BANDNOTE Logo" style="width: auto; height: 35px">
			</a>
        </div>
        
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                	<ul class="nav navbar-nav">
                		<li class= "active"> <a href="main.jsp">메인</a></li>
                	    <li> <a href="bbs.jsp">게시판</a></li>
                	</ul>
                	<%
                		if(userID == null){
                	%>	
                	<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">접속하기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
							</ul>
						</li>
					</ul>
                	<%
                		}else{
                	%>
                	<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">회원관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="logoutAction.jsp">로그아웃</a></li>
								
							</ul>
						</li>
					</ul>
                	<%		
                		}
                	%>

		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>The Band Note</h1>
			<p>공연의 추억을 간직할 수 있는 특별한 온라인 방명록</p>
			<p><a class="btn btn=primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
		</div>
	</div>
	
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000"> <!-- data-interval은 슬라이드 간 간격을 밀리초 단위로 설정합니다 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="images/note1.png">
            </div>
            <div class="item">
                <img src="images/note2.png">
            </div>
            <div class="item">
                <img src="images/note3.png">
            </div>
        </div>
    </div>
</div>

	
	
	<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <img src="images/text.png" class="img-responsive" style="width: 150px; height: auto;">
                        </div>
                        <div class="col-sm-6">
                            <h2>어쩌구저쩌구</h2>
                            <p>어쩌구저쩌구어쩌구저쩌구</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
   
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
   
</body>
</html>