<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
				<c:when test="${not empty messageList}">
					<table
						class="table table-striped table-condensed table-bordered table-rounded">
						<tr>
							<td>Sender</td>
							<td>Subject</td>
							<td>Sex</td>
							<td>Age</td>
							<td>Message</td>
							<td>Date</td>
						</tr>
						<c:forEach var="message" items="${messageList}">
							<tr>
								<td>${message.firstName} ${message.lastName}</td>
								<td>${message.subject}</td>
								<td>${message.sex}</td>
								<td>${message.age}</td>
								<td>${message.text}</td>
								<td>${message.sentTime}</td>
							</tr>
						</c:forEach>
					</table>
					<div class="pagination text-center"><ul>

						<c:url value="/list" var="prev">
							<c:param name="page" value="${page-1}" />
							<c:param name="maxItems" value="${maxItems}" />
						</c:url>
						<c:if test="${page > 1}">
							<li><a href="<c:out value="${prev}" />" class="pn prev">&laquo; Prev</a></li>
						</c:if>

						<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
							<c:choose>
								<c:when test="${page == i.index}">
									<li><span>${i.index}</span></li>
								</c:when>
								<c:otherwise>
									<c:url value="/list" var="url">
										<c:param name="page" value="${i.index}" />
										<c:param name="maxItems" value="${maxItems}" />
									</c:url>
									<li><a href='<c:out value="${url}" />'>${i.index}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:url value="/list" var="next">
							<c:param name="page" value="${page + 1}" />
							<c:param name="maxItems" value="${maxItems}" />
						</c:url>
						<c:if test="${page + 1 <= maxPages}">
							<li><a href='<c:out value="${next}" />' class="pn next">Next &raquo;</a></li>
						</c:if>
					</ul></div>
				</c:when>
				<c:otherwise>
					<br />
					<br />
					<br />
					<h4>
						You have <span style="color: red; text-align: center">no
							message</span> available!
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
