<%@ include file="header.jsp" %>
<body>
	<div class="wrapper">
		<header>
				<%@ include file="banner.jsp" %>
		</header>
		<section>
			<%@ include file="searchForm.jsp" %>
			<br />
			<p style="color: olive; text-align: center">
				Today's date:
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
			<br /> <br /> <br /> <br /> <br />
		</section>
		<%@ include file="footer.jsp" %></div>