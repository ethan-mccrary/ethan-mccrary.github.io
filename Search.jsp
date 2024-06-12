<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.personal.personal_website.Data" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    List<String> links = new ArrayList<>();
    if (request.getParameter("project_query") != null) {
        response.setContentType("text/html");
        String query = request.getParameter("project_query").toLowerCase();
        Data data = new Data();
        List<List<String>> projects = new ArrayList<>();
        projects.add(data.projects);
        projects.add(data.links);


        //first projectName then projectLink
        for (int i = 0; i < projects.get(0).size(); i++) {
            if (projects.get(0).get(i).toLowerCase().contains(query)) {
                links.add(projects.get(0).get(i) + "," + projects.get(1).get(i));
            }
        }
    }
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Project Search</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css" />
</head>
<body class="is-preload">

<!-- Page wrapper -->
<div id="page-wrapper">

    <jsp:include page="header.jsp"/>

    <!-- Main -->
    <section id="main" class="wrapper style2">
        <div class="inner">
            <header class="major special">
                <h1>My Work</h1>
                <p>I have completed various projects and update this page regularly as projects are finished. Some
                    projects are hosted here, while others are hosted on my <a
                            href="https://github.com/Ty-Haruki?tab=repositories">GitHub account</a>.</p>
            </header>

            <!-- Search -->
            <form method="post" action="${pageContext.request.contextPath}/Search.jsp">
                <div class="row gtr-uniform">
                    <div class="col-10 col-12-small">
                        <input type="text" name="project_query" id="project_query" placeholder="Project Name"/>
                    </div>
                    <div class="col-2 col-12-small">
                        <input type="submit">
                    </div>
                </div>
            </form>

            <ul>
                <%if (!links.isEmpty()) {
                    for(String content:links) {%>
                <li>
                    <div class="box">
                        <h4><%out.print(content.split(",")[0]);%></h4>

                        <ul class="actions">
                            <li><a href="<% out.print(content.split(",")[1]); %>"
                                   class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
                <%  }
                } else {%>
                <h4>Sorry, no results found!</h4>
                <% } %>
            </ul>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>