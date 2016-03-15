<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<c:forEach var="message" items="${messageSearch}">
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
					<div class="pagination text-center">
						<ul>
							<c:url value="/search" var="prev">
								<c:param name="page" value="${page-1}" />
								<c:param name="name" value="${name}" />
								<c:param name="maxItems" value="${maxItems}" />
							</c:url>
							<c:if test="${page > 1}">
								<li><a href="<c:out value="${prev}${name}" />"
									class="pn prev">&laquo; Prev</a></li>
							</c:if>

							<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
								<c:choose>
									<c:when test="${page == i.index}">
										<li><span>${i.index}</span></li>
									</c:when>
									<c:otherwise>
										<c:url value="/search" var="url">
											<c:param name="page" value="${i.index}" />
											<c:param name="name" value="${name}" />
											<c:param name="maxItems" value="${maxItems}" />
										</c:url>
										<li><a href='<c:out value="${url}${name}" />'>${i.index}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:url value="/search" var="next">
								<c:param name="page" value="${page + 1}" />
								<c:param name="name" value="${name}" />
								<c:param name="maxItems" value="${maxItems}" />
							</c:url>
							<c:if test="${page + 1 <= maxPages}">
								<li><a href='<c:out value="${next}${name}" />'
									class="pn next">Next &raquo;</a></li>
							</c:if>
						</ul>
					</div>
				