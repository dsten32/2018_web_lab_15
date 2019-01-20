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
<% if (session.getAttribute("invoice")==null){ %>
<core:set var="iborder" value=""/>
    <%
} else if (session.getAttribute("invoice").equals("")){%>
<core:set var="iborder" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("address")==null){ %>
<core:set var="aborder" value=""/>
<%
} else if (session.getAttribute("address").equals("")){%>
<core:set var="aborder" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("cardname")==null){ %>
<core:set var="cnborder" value=""/>
<%
} else if (session.getAttribute("cardname").equals("")){%>
<core:set var="cnborder" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("ccdprovider")==null){ %>
<core:set var="cpborder" value=""/>
<%
} else if (session.getAttribute("ccdprovider").equals("")){%>
<core:set var="cpborder" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("ccd1")==null){ %>
<core:set var="c1border" value=""/>
<%
} else if (session.getAttribute("ccd1").equals("")){%>
<core:set var="c1border" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("ccd2")==null){ %>
<core:set var="c2border" value=""/>
<%
} else if (session.getAttribute("ccd2").equals("")){%>
<core:set var="c2border" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("ccd3")==null){ %>
<core:set var="c3border" value=""/>
<%
} else if (session.getAttribute("ccd3").equals("")){%>
<core:set var="c3border" value="style=border-color:red"/>
<%}%>

<% if (session.getAttribute("ccd4")==null){ %>
<core:set var="c4border" value=""/>
<%
} else if (session.getAttribute("ccd4").equals("")){%>
<core:set var="c4border" value="style=border-color:red"/>
<%}%>


<form action="question4" method="post">
    <table>
        <tr>
            <td><label for="invoice">Invoice Number</label></td>

            <td><input id="invoice" type="number" name="invoice"  placeholder="INVOICE#" <core:out value="${fn:length(invoice) eq 0 ? iborder : 'value='.concat(invoice).concat('')}"/>></td>

        </tr>
        <tr>
            <td><label for="address">Address:</label></td>
            <td><textarea id="address" name="address" placeholder="address" rows="5" cols="50" <core:out value="${fn:length(address) eq 0 ? aborder : 'value='.concat(address).concat('')}"/>></textarea></td>
        </tr>
        <tr>
            <td><label for="cardname">Name on your card</label></td>
            <td><input id="cardname" type="text" name="cardname" placeholder="CCD name" <core:out value="${fn:length(cardname) eq 0 ? cnborder : 'value='.concat(cardname).concat('')}"/>></td>
        </tr>
        <tr>
            <td><label for="ccdprovider">Provider</label></td>
            <td><input id="ccdprovider" type="text" name="ccdprovider" placeholder="card provider (visa ect)" <core:out value="${fn:length(ccdprovider) eq 0 ? cpborder : 'value='.concat(ccdprovider).concat('')}"/>></td>
        </tr>
        <tr>
            <td><label for="ccd1">CCD #</label></td>
            <td><input id="ccd1" type="number" maxlength="4" min="1000" max="9999" name="ccd1" placeholder="XXXX" width="4" <core:out value="${fn:length(ccd1) eq 0 ? c1border : 'value='.concat(ccd1).concat('')}"/>><input type="number" maxlength="4" min="1000" max="9999" name="ccd2" placeholder="XXXX" <core:out value="${fn:length(ccd2) eq 0 ? c2border : 'value='.concat(ccd2).concat('')}"/>><input type="number" maxlength="4" min="1000" max="9999"  name="ccd3" placeholder="XXXX" <core:out value="${fn:length(ccd3) eq 0 ? c3border : 'value='.concat(ccd3).concat('')}"/>><input type="number" maxlength="4" min="1000" max="9999" name="ccd4" placeholder="XXXX" <core:out value="${fn:length(ccd4) eq 0 ? c4border : 'value='.concat(ccd4).concat('')}"/>></td>
        </tr>

    <br>


    </table>
    <br>
    <input type="submit" value="submit" name="submit">


</form>


</body>
</html>
