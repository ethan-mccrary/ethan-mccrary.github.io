<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.personal.personal_website.DatabaseConnect" %>
<%@ page import="java.sql.ResultSet" %>
<%
    DatabaseConnect databaseConnect = new DatabaseConnect();
    Connection con = databaseConnect.getRemoteConnection();
    ResultSet courses = null;
    try {
        courses = databaseConnect.getCourses(con);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Courses</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" href="assets/css/jquery-modal.css"/>
</head>
<body class="is-preload">

<!-- Page wrapper -->
<div id="page-wrapper">

    <jsp:include page="header.jsp"/>

    <!--
        Thoughts: I'll need to connect to the database hosted on RDS.
        From there, I can handle the searching and listing with JSP database code.
        Searching:
            Create a servlet to handle the HTTP response from the search form.
            Autofill might be used here as well.
        Listing:
            Use data returned from the servlet to post the info on each course in a foreach loop.
    -->

    <!-- Main -->
    <section id="main" class="wrapper style2">
        <div class="inner">
            <header class="major special">
                <h1>Course List</h1>
                <p>I have taken dozens of classes through Austin Peay State University in order to attain my Bachelor's
                    of Science in Computer Information Systems with a minor in Mobile Software Development.</p>
            </header>

            <div class="table-wrapper">
                <table class="alt">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Name</th>
                            <th>Professor</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% try {
                        if (courses != null) {
                            int id = 0;
                            while (courses.next()){ %>
                                <tr>
                                    <td><%= courses.getString(1) %></td>
                                    <td>
                                        <a href="#modal<%out.print(id);%>"
                                           rel="modal:open"><%= courses.getString(2) %></a>

                                        <div id="modal<%out.print(id);%>" class="modal">
                                            <h5><%= courses.getString(2) %></h5>
                                            <p><%= courses.getString(4) %></p>
                                        </div>
                                    </td>
                                    <td><%= courses.getString(3) %></td>
                                </tr>
                    <%      id++;
                            }
                        }
                    } catch (SQLException e) { e.printStackTrace();} %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>
</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>