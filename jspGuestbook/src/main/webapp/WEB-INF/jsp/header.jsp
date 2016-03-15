<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="message" class="sample.tomcat.jsp.Message"
	scope="request" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Juste's first Java web Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="../../css/mystyle.css" />" rel="stylesheet"
	media="all">
<link href="<c:url value="../../css/bootstrap.min.css" />"
	rel="stylesheet" media="all">
</head>