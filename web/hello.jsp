<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Test.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List adminList=new ArrayList();
        Admin admin=null;
        for (int i = 0; i < 10; i++) {
            admin=new Admin("i","管理员"+(i+1),"密码"+(i+1));
            adminList.add(admin);
        }
        request.setAttribute("adminList",adminList);
    %>
<table border="1" width="80%" align="center">
    <tr>
        <td>名字</td>
        <td>管理员</td>
        <td>密码</td>
    </tr>
    <c:forEach var="admin" items="${requestScope.adminList}" varStatus="status">
        <tr <c:if test="${status.index%2==1}">style="background-color:yellow;"></c:if>>
            <td>${admin.name}</td>
            <td>${admin.account}</td>
            <td>${admin.password}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
