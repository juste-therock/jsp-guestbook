<%@ page import="java.util.*"%>
<%@ include file="header.jsp"%>
<body>
	<!-- <script>
		window.fbAsyncInit = function() {
			FB.init({
				appId : '1006937109382101',
				xfbml : true,
				version : 'v2.6'
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
 -->	<div class="wrapper">
		<header>
			<%@ include file="banner.jsp"%>
		</header>
		<section>
			<%@ include file="searchForm.jsp"%>
			<br />
			<p style="color: olive; text-align: center">
				Today's date is:
				<%=(new java.util.Date()).toString()%>
			</p>
			<jsp:useBean id="clock" class="java.util.Date" />
			<c:choose>
				<c:when test="${clock.hours < 12}">
					<h4 style="text-align: center">Good morning!</h4>
				</c:when>
				<c:when test="${clock.hours < 18}">
					<h4 style="text-align: center">Good day!</h4>
				</c:when>
				<c:otherwise>
					<h4 style="text-align: center">Good evening!</h4>
				</c:otherwise>
			</c:choose>
			<h4 style="color: green; text-align: center">Welcome to my JSP
				Guestbook, available 24 hours a day</h4>
			<%
				out.println("<h5 style=\"color: green; text-align: center\">Your IP address is " + request.getRemoteAddr()
						+ "<h5>");
			%>
			<br />
			<h1 style="color:green">Hello </h1>
                <h1 style="color:royalblue">${userInfo} ,</h1> <h1 style="color:green">welcome to Rocca's World !</h1>
    
		</section>
		<%@ include file="footer.jsp"%></div>