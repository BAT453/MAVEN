<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Music Page</title>

    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<a href="<c:url value='/'/>">Back to main menu</a>
<br/>
<br/>
<a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
<br/>

<h1>Add a Album</h1>

<%--<c:url var="addAction" value="admin/add"/>--%>
<%--action="${addAction}"--%>

<form:form commandName="book">
    <table>
        <tr>
            <td>
                <form:label path="bookTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookTitle"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookAuthor">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookAuthor"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message text="Add Album"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
