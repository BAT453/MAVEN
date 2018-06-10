<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Book Edit</title>

    <!-- Bootstrap Core CSS -->
    <%--<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<c:url value="/resources/vendor/metisMenu/metisMenu.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/resources/dist/css/sb-admin-2.css" />" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="<c:url value="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" />" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<c:url value="/resources/vendor/datatables-responsive/dataTables.responsive.css" />" rel="stylesheet">


    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" />" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<%--<a href="<c:url value='/'/>">Back to main menu</a>--%>
<%--<br/>--%>
<%--<br/>--%>
<%--<a href="<c:url value="/j_spring_security_logout"/>">Logout</a>--%>
<%--<br/>--%>
<%--<h1>Edit book</h1>--%>

<%--<c:url var="addAction" value="admin/add"/>--%>
<%--action="${addAction}"--%>


<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Library</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="<c:url value="/j_spring_security_logout"/>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                    <li>
                        <a href="/list">Book Page</a>
                    </li>
                    <li>
                        <a href="/admin/add">Add Book</a>
                    </li>
                    <li>
                        <a href="/login">Login Page</a>
                    </li>
                    <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Book Add</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">

                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <%--<thead>--%>
                    <%--<tr>--%>
                    <%--<th>Title</th>--%>
                    <%--<th>Author</th>--%>
                    <%--<th>Price</th>--%>
                    <%--</tr>--%>
                    <%--</thead>--%>
                    <tbody>

                    <form:form commandName="book">
                        <%--<table>--%>
                    <c:if test="${!empty book.bookTitle}">
                    <tr>
                        <td>
                            <form:label path="id">
                                <spring:message text="ID"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="id" readonly="true" size="8" disabled="true"/>
                            <form:hidden path="id"/>
                        </td>
                    </tr>
                    </c:if>
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
                            <c:if test="${!empty book.bookTitle}">
                                <input type="submit"
                                       value="<spring:message text="Edit Book"/>"/>
                            </c:if>
                        </td>
                    </tr>
                        <%--</table>--%>
                    </form:form>


                </table>

            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /#page-wrapper -->

</div>

</body>
</html>
