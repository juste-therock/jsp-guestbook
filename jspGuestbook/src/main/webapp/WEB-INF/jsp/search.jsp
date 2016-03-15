<%@ include file="header.jsp" %>
<body>
	<div class="wrapper">
		<header>
			<%@ include file="banner.jsp" %>
		</header>
		<section>
			<%@ include file="searchForm.jsp" %>
			<c:choose>
				<c:when test="${not empty messageSearch}">
					<h5 style="color: olive; text-align: center">
						Message sent my persons(s) which names contain the string:
						<%
						out.println("" + name);
					%>!
					</h5>
					<%@ include file="displaySearch.jsp"%>
				</c:when>
				<c:otherwise>
					<br />
					<br />
					<br />
					<h4>
						There's <span style="color: red; text-align: center">no
							message</span> with sender's name containing the string:
						<%
						out.println("" + name);
					%>!
					</h4>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</c:otherwise>
			</c:choose>
		</section>
		<%@ include file="footer.jsp" %></div>