<%--
  Created by IntelliJ IDEA.
  User: dwc1
  Date: 18/01/2019
  Time: 12:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>

<form action="question4" method="post">
    <table>
        <tr>
            <td><label for="invoice">Invoice Number</label></td>
            <td><input id="invoice" type="number" name="invoice" placeholder="${invoice}"></td>
        </tr>
        <tr>
            <td><label for="address">Address:</label></td>
            <td><textarea id="address" name="address" placeholder="address" rows="5" cols="50"></textarea></td>
        </tr>
        <tr>
            <td><label for="cardname">Name on your card</label></td>
            <td><input id="cardname" type="text" name="cardname" placeholder="CCD name"></td>
        </tr>
        <tr>
            <td><label for="ccdprovider">Provider</label></td>
            <td><input id="ccdprovider" type="text" name="ccdprovider" placeholder="card provider (visa ect)"></td>
        </tr>
        <tr>
            <td><label for="ccd1">CCD #</label></td>
            <td><input id="ccd1" type="number" size="4" name="ccd1" placeholder="XXXX" width="4"><input type="number" size="4" name="ccd2" placeholder="XXXX"><input type="number" size="4" name="ccd3" placeholder="XXXX"><input type="number" size="4" name="ccd4" placeholder="XXXX"></td>
        </tr>

    <br>


    </table>
    <br>
    <input type="submit" value="submit" name="submit">

</form>


</body>
</html>
