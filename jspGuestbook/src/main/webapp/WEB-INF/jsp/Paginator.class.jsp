<%--  package sample.tomcat.jsp;
 <%@ page language="java" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*"%>

<%!
 class Paginator {
	private String name;
	private String kindoflist;
	private Integer maxItems ;
	private Integer page;
	private String url;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getMaxItems() {
		return maxItems;
	}
	public void setMaxItems(Integer maxItems) {
		this.maxItems = maxItems;
	}
	public String getKindoflist() {
		return kindoflist;
	}
	public void setKindoflist(String kindoflist) {
		this.kindoflist = kindoflist;
	}
	
public  Paginator(String kindoflist, int page, String url, Integer maxItems, String name){
		this.name = name;
		this.maxItems= maxItems;
		this.page = page;
		this.url = url;
		this.kindoflist = kindoflist;
	}
%>
<%! public void getData(String kindoflist, JspWriter out) throws IOException {
	this.kindoflist = kindoflist;
	out.print('<table class="table table-striped table-condensed table-bordered table-rounded">
	<tr>
		<td>Sender</td>
		<td>Subject</td>
		<td>Sex</td>
		<td>Age</td>
		<td>Message</td>
		<td>Date</td>
	</tr>)'
	<c:forEach var="message" items="${kindoflist}">
		<tr>
			<td>${message.firstName} ${message.lastName}</td>
			<td>${message.subject}</td>
			<td>${message.sex}</td>
			<td>${message.age}</td>
			<td>${message.text}</td>
			<td>${message.sentTime}</td>
		</tr>
	</c:forEach>
</table>)';
	}

public void paginate(Integer page, Integer maxItems, String url, JspWriter out) throws IOException {
	%><div class="pagination text-center"><ul>

	<c:url value="/list" var="prev">
		<c:param name="page" value="${page-1}" />
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
				</c:url>
				<li><a href='<c:out value="${url}" />'>${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:url value="/list" var="next">
		<c:param name="page" value="${page + 1}" />
	</c:url>
	<c:if test="${page + 1 <= maxPages}">
		<li><a href='<c:out value="${next}" />' class="pn next">Next &raquo;</a></li>
	</c:if>
</ul></div>;
}
}
%> --%>