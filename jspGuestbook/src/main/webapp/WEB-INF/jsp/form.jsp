<%@ include file="header.jsp" %>
<body>
	<div class="wrapper">
		<header>
				<%@ include file="banner.jsp" %>
		</header>
		<section>
			<%@ include file="searchForm.jsp" %>
			<c:url var="url" value="/result" />
			<form:form action="${pageContext.servletContext.contextPath}/result"
				name="showForm" modelAttribute="message" method="get">
				<form:hidden path="id" />
				<fieldset>
					<table class="fo">
						<tr>
							<td>First Name:</td>
							<td><form:input path="firstName" type="text"
									required="required" /></td>
							<form:errors path="firstName" />
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><form:input path="lastName" type="text"
									required="required" /></td>
							<form:errors path="lastName" />
						</tr>
						<tr>
							<td>Email:</td>
							<td><form:input path="eMail" type="email"
									required="required" /></td>
							<form:errors path="eMail" />
						</tr>
						<tr>
							<td>Subject:</td>
							<td><form:input path="subject" type="text" />
								<form:errors path="subject" /></td>
						</tr>
						<tr>
							<td>Message:</td>
							<td><form:input path="text" type="textarea" /></td>
						</tr>
						<tr>
							<td>Age:</td>
							<td><form:input path="age" type="text" required="required" />
								<form:errors path="age" /></td>

						</tr>
						<tr>
							<td>Sex:</td>
							<td>Male<form:radiobutton path="sex" value="M" label="M" /></td>
							<td>Female<form:radiobutton path="sex" value="F" label="F" />
							</td>
						</tr>
						<tr>
							<td><button type="submit" name="submit">Send</button></td>
							<td><button type="reset" name="cancel">Cancel</button></td>
						</tr>
					</table>
				</fieldset>
			</form:form>
		</section>
		<%@ include file="footer.jsp" %></div>