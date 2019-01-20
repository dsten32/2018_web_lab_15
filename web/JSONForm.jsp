<%--
  Created by IntelliJ IDEA.
  User: dwc1
  Date: 18/01/2019
  Time: 12:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>

    </script>
</head>
<body>

<form action="question4" method="post">
    <table>
        <tr>
            <td><label for="invoice">Invoice Number</label></td>

            <td><input id="invoice" type="number" name="invoice"  placeholder="INVOICE#" <core:out value="${fn:length(invoice) eq 0 ? 'style=border-color\: red' : 'value='.concat(invoice).concat('')}"/>></td>

        </tr>
        <tr>
            <td><label for="address">Address:</label></td>
            <td><textarea id="address" name="address" placeholder="address" rows="5" cols="50" <core:if test="${fn:length(address)!=0}">value="${address}"</core:if>></textarea></td>
        </tr>
        <tr>
            <td><label for="cardname">Name on your card</label></td>
            <td><input id="cardname" type="text" name="cardname" placeholder="CCD name" <core:if test="${fn:length(cardname)!=0}">value="${cardname}"</core:if>></td>
        </tr>
        <tr>
            <td><label for="ccdprovider">Provider</label></td>
            <td><input id="ccdprovider" type="text" name="ccdprovider" placeholder="card provider (visa ect)" <core:if test="${fn:length(ccdprovider)!=0}">value="${ccdprovider}"</core:if>></td>
        </tr>
        <tr>
            <td><label for="ccd1">CCD #</label></td>
            <td><input id="ccd1" type="number" maxlength="4" min="1000" max="9999" name="ccd1" placeholder="XXXX" width="4" <core:if test="${fn:length(ccd1)!=0}">value="${ccd1}"</core:if>><input type="number" maxlength="4" min="1000" max="9999" name="ccd2" placeholder="XXXX" <core:if test="${fn:length(ccd2)!=0}">value="${ccd2}"</core:if>><input type="number" maxlength="4" min="1000" max="9999"  name="ccd3" placeholder="XXXX" <core:if test="${fn:length(ccd3)!=0}">value="${ccd3}"</core:if>><input type="number" maxlength="4" min="1000" max="9999" name="ccd4" placeholder="XXXX" <core:if test="${fn:length(ccd4)!=0}">value="${ccd4}"</core:if>></td>
        </tr>

    <br>


    </table>
    <br>
    <input type="submit" value="submit" name="submit">


</form>


</body>
</html>
