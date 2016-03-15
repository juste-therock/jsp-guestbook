<%@ include file="header.jsp" %>
<body>
	<div class="wrapper">
		<header>
				<%@ include file="banner.jsp" %>
		</header>

		<section>
			<%@ include file="searchForm.jsp" %>
			<h4>Congratulations! Your message has been sent successfully!</h4>
			<%
				String fname = request.getParameter("firstName");
				String lname = request.getParameter("lastName");
				String emai = request.getParameter("eMail");
				String msg = request.getParameter("text");
				out.println("Hi, " + fname + " " + lname);
				out.println("<br />Your message is: " + msg);
			%>

			<p class="msg" /></p>
			<h4 class="ol">
				<a href="/form">Submit another message</a>
			</h4>
		</section>
		<%@ include file="footer.jsp" %></div>