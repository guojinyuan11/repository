<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/12 0012
  Time: 下午 1:07
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>数学成绩</td>
        <td>英语成绩</td>
        <td>语文成绩</td>
        <td>平均分</td>
        <td colspan="2">总分</td>
    </tr>
    <c:forEach items="${students}" var="student" varStatus="stu">
        <tr>
            <td>${stu.count}</td>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.math}</td>
            <td>${student.english}</td>
            <td>${student.chinese}</td>
            <td>${student.averager}</td>
            <td>${student.total}</td>
            <td><a class="btn btn-default btn-sm" href="/checkServlet">修改</a>
                <a class="btn btn-default btn-sm" href="deleteServlet">修改</a> </td>
        </tr>
    </c:forEach>
</table>

<div style="float: right; margin: 5px">
    <a href="addServlet">添加</a>
</div>
</body>
</html>
<%--<table>--%>
    <%--<tr>--%>
        <%--<td>编号</td>--%>
        <%--<td>姓名</td>--%>
        <%--<td>math</td>--%>
        <%--<td>english</td>--%>
        <%--<td>chinese</td>--%>
    <%--</tr>--%>
<%--<%--%>
    <%--String dbName="student";--%>
    <%--String username="root";--%>
    <%--String password="root";--%>
    <%--String host="127.0.0.1";--%>
    <%--int port=1433;--%>
    <%--String connectionUrl = "jdbc:sqlserver://" + host + ":" + port + ";databaseName=" + dbName + ";user=" + username--%>
            <%--+ ";password=" + password;--%>
    <%--Connection con = null;--%>
    <%--Statement stmt = null;--%>
    <%--ResultSet rs = null;--%>
    <%--Class.forName("com.mysql.jdbc.Driver");--%>
    <%--con=DriverManager.getConnection(connectionUrl);--%>
    <%--String sql="select * from stu";--%>
    <%--stmt=con.createStatement();--%>
    <%--rs=stmt.executeQuery(sql);--%>
    <%--while (rs.next()){--%>
<%--%>--%>
<%--<tr>--%>
    <%--<td>--%>
        <%--<%=rs.getInt(1)%>--%>
    <%--</td>--%>
    <%--<td>--%>
        <%--<%=rs.getString(2)%>--%>
    <%--</td>--%>
    <%--<td>--%>
        <%--<%=rs.getInt(3)%>--%>
    <%--</td>--%>
    <%--<td>--%>
        <%--<%=rs.getInt(4)%>--%>
    <%--</td>--%>
    <%--<td>--%>
        <%--<%=rs.getInt(5)%>--%>
    <%--</td>--%>

<%--</tr>--%>
<%--}--%>

<%--%>--%>

