<%@ page import="java.util.*"%>
<%@ include file="header.jsp"%>
<body>
	<div class="wrapper">
		<header>
			<%@ include file="banner.jsp"%>
		</header>
		<c:url var="url" value="/home" />
		<h4>User Login.</h4>
        <form:form method="post" name="loginForm">
            <table>
                <tr><td>User Name: </td><td><input name="userName" type="textbox"></td></tr>
                <tr><td>Password: </td><td><input name="password" type="password"></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
            </table>
            <div style="color:red">${error}</div>
        </form:form>
		<section>
			<br />
		</section>
		<%@ include file="footer.jsp"%></div>