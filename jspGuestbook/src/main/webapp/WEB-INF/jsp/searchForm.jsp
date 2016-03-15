<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
				String name = request.getParameter("name");
			%>
			<aside class="rech">
				<c:url var="url" value="/search" />
				<form:form action="${pageContext.servletContext.contextPath}/search"
					name="name" modelAttribute="research" method="get">
					<table>
						<tr class="rech">
							<td><form:input path="name" type="text" class="searchsubmit"
									value="  Search by name..."
									onblur="if (this.value == '') {this.value = '  Search by name...';}"
									onfocus="if (this.value == '  Search by name...') {this.value = '';}"
									required="required" /></td>
							<td><button class="sub" type="submit">Search by
									name</button></td>
						</tr>
					</table>
				</form:form>
			</aside>
			<h3>
				This is my <span style="color: blue; text-align: center">Guestbook</span>
				with JSP!
			</h3>
