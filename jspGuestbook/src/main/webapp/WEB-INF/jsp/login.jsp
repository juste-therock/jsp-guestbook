<%-- <%@ page import="java.util.*"%> --%>
<%@ include file="header.jsp"%>
<body>
	<div class="wrapper">
		<header>
			<%@ include file="banner.jsp"%>
		</header>
		<h4>User Login:</h4>
		<c:url var="url" value="/login" />
		<form:form action="${pageContext.servletContext.contextPath}/login"
			method="get" modelAttribute="loginModel" name="loginForm">
			<form:hidden path="id" />
			<table>
				<tr>
					<td>User Name:</td>
					<td><form:input path="userName" type="text"
									required="required" /></td>
							<form:errors path="userName" />
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" type="password"
									required="required" /></td>
							<form:errors path="password" />
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit"
						value="Submit"></td>
				</tr>
			</table>
			<div style="color: red">${error}</div>
		</form:form>
		<section>
			<br />
		</section>
		<%@ include file="footer.jsp"%></div>