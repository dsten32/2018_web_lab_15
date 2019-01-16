<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Exercise 01</title>
    <style>
        tr:nth-child(even) {background: #CCC}
        tr:nth-child(odd) {background: #FFF}
    </style>
</head>
<body>

New entry form
<form action="question1/new" method="post" title="New Entry">
    <label for="name">Name</label>
    <input type="text" id="name" name="name">

    <label for="desc">Description</label>
    <input type="text" id="desc" name="desc">
    <input type="submit" value="Submit">
</form>
Generate a well formed table of AccessLogs here using JSTL/EL.
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>desc</th>
        <th>timestamp</th>
    </tr>
    </thead>
    <core:forEach items="${allAccessLogs}" var="log">
        <tr>
            <td class="id">${log.id}</td>
            <td class="name">${log.name}</td>
            <td class="desc">${log.desc}</td>
            <td class="time">${log.timeStamp}</td>
        </tr>
    </core:forEach>
    <core:set var="size" value="${fn:length(allAccessLogs)}"/>
    <core:if test="${size>=30}">
        <tfoot>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>desc</th>
            <th>timestamp</th>
        </tr>
        </tfoot>
    </core:if>
</table>

</body>
</html>
