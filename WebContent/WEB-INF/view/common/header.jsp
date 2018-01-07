<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String a1 = "";
String a2 = "";
String a3 = "";
String a4 = "";
String a5 = "";

String h2 = "";
String h2e = "";
String h3 = "";
String h3e = "";

String view = "";
String loginMenu = "Login";
String loginUrl = rootPath + "/view/user/login";
if(user!=null){
	loginMenu = "Logout";
	loginUrl = rootPath + "/user/logout";
}
String url = request.getRequestURL().toString();
if(url.equals("http://localhost/")){
	view="view1";

}else if(url.equals("http://localhost/WEB-INF/view/user/login.jsp")){
	view="view2";
	a1 = "active";
}else if(url.equals("http://localhost/WEB-INF/view/user/signin.jsp")){
	view="view3";
	
}else if(url.equals("http://localhost/WEB-INF/view/user/list.jsp")){
	view="view4";
	a2 = "active";
	h2 = "<h2>";
	h2e = "</h2>";
	h3 = "<h3>";
	h3e = "</h3>";
}else if(url.equals("http://localhost/WEB-INF/view/user/profile.jsp")){
	view="view5";
	a3 = "active";
	h2 = "<h2>";
	h2e = "</h2>";
	h3 = "<h3>";
	h3e = "</h3>";
}
%>
<script src="<%=rootPath%>/ui/js/jquery-3.2.1.js"></script>
<script src="<%=rootPath%>/ui/js/bootstrap.min.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
                    
.view1 {
    background: url("https://mdbootstrap.com/img/Photos/Others/img (40).jpg")no-repeat center center;
}

.view2 {
    background: url("http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52d09387ae003_1.JPG")no-repeat center center;
}

.view3 {
    background: url("http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52cf9489095e8_1.JPG")no-repeat center center;
}   

.view4 {
    background: url("http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52c470899a2e1_1.JPG")no-repeat center center;
}   

.view5 {
    background: url("http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_52cd36aac6bed_1.JPG")no-repeat center center;
}   
    
.navbar {
    background-color: transparent;
}

.top-nav-collapse {
    background-color: #4285F4;
}

@media only screen and (max-width: 768px) {
    .navbar {
        background-color: #4285F4;
    }
}
    </style>
 

    <title>IOT</title>
 
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<body>
	<!--Main Navigation-->
<header>

    <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
        <a class="navbar-brand" href="<%=rootPath%>/"><strong><%=h2%>IOT DB<%=h2e%></strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <%=a1%>">
                    <a class="nav-link" href="<%=loginUrl%>"><%=h3%><%=loginMenu%><%=h3e%><span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <%=a2%>">
                    <a class="nav-link" href="/view/user/list"><%=h3%>User List<%=h3e%></a>
                </li>
                <li class="nav-item <%=a3%>">
                    <a class="nav-link" href="/view/class/list"><%=h3%>Class List<%=h3e%></a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="<%=view%> intro hm-purple-light" style="height: 400px;"></div>

</header>