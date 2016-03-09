<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ include file="/includes/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Console</title>
<meta name="menu" content="user" />
<link rel="stylesheet" type="text/css" href="<c:url value='/styles/tablesorter/style.css'/>" />
<script type="text/javascript" src="<c:url value='/scripts/jquery.tablesorter.js'/>"></script>
</head>

<body>

<h1>客户端</h1>

<table id="tableList" class="tablesorter" cellspacing="1">
	<thead>
		<tr>
			<%--
			<th width="5%">Online</th>
			<th width="30%">Username</th>
			<th width="20%">Name</th>
			<th width="20%">Email</th>
			<th width="25%">Created</th>
			--%>
			<th>Online</th>
			<th>ClientName</th>
			<th>tasks</th>
			<th>progress</th>
			<th>Created</th>
		</tr>
	</thead>
	<tbody>
	<%-- 	<c:forEach var="user" items="${userList}">
			<tr>
				<td align="center">
				<c:choose>
				<c:when test="${user.online eq true}">
					<img src="images/user-online.png" />
				</c:when>
				<c:otherwise>
					<img src="images/user-offline.png" />
				</c:otherwise>
				</c:choose>
				</td>
				<td><c:out value="${user.username}" /></td>
				<td><c:out value="${user.name}" /></td>
				<td><c:out value="${user.email}" /></td>
				<td align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${user.createdDate}" /></td>
			</tr>
		</c:forEach> --%>
			<tr>
				<td align="center">
					<img src="images/user-online.png" />
				</td>
				<td><c:out value="安卓１" /></td>
				<td><a href="#"><c:out value="任务1" /></a></td>
				<td><c:out value="30%" /></td>
				<td align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${user.createdDate}" />2016-03-02</td>
			</tr>
			<tr>
				<td align="center">
					<img src="images/user-offline.png" />
				</td>
				<td><c:out value="安卓2" /></td>
				<td><a href="#"><c:out value="任务2" /></a></td>
				<td><c:out value="50%" /></td>
				<td align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${user.createdDate}" />2016-03-03</td>
			</tr>
	</tbody>
</table>

<script type="text/javascript">
//<![CDATA[
$(function() {
	$('#tableList').tablesorter();
	//$('#tableList').tablesorter( {sortList: [[0,0], [1,0]]} );
	//$('table tr:nth-child(odd)').addClass('odd');
	$('table tr:nth-child(even)').addClass('even');	 
});
//]]>
</script>

</body>
</html>
