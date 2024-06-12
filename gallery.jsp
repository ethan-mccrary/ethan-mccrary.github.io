<%@ page import="com.personal.personal_website.GetImages" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    GetImages imageSetup = new GetImages();
    ArrayList<String> images = imageSetup.images;
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Gallery</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body class="is-preload">

<!-- Page wrapper -->
<div id="page-wrapper">

    <!-- Header -->
    <jsp:include page="header.jsp"/>

    <!-- Main -->
    <section id="main" class="wrapper style2">
        <div class="inner">
            <header class="major special">
                <h1>My Photos</h1>
                <p>I primarily focus on astrophotography and nightscapes, but I dabble in other genres.</p>
            </header>
            <ul class="tabs">
                <li>
                    <h3>All</h3>
                    <div class="gallery">
                        <%
                            if (!images.isEmpty()) {
                                for (String content : images) {
                                    if (!content.endsWith("/") && !content.contains("slides")) {
                                        out.print("<a href=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/"
                                                + content + "\"><img src=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/" + content + "\" alt=\"\"></a>\n");
                                    }
                                }
                            }
                        %>
                    </div>
                </li>
                <li>
                    <h3>Astrophotography & Nightscapes</h3>
                    <div class="gallery">
                        <%
                            if (!images.isEmpty()) {
                                for (String content : images) {
                                    if (!content.endsWith("/") && content.contains("astro")) {
                                        out.print("<a href=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/"
                                                + content + "\"><img src=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/" + content + "\" alt=\"\"></a>\n");
                                    }
                                }
                            }
                        %>
                    </div>
                </li>
                <li>
                    <h3>Snow</h3>
                    <div class="gallery">
                        <%
                            if (!images.isEmpty()) {
                                for (String content : images) {
                                    if (!content.endsWith("/") && content.contains("snow")) {
                                        out.print("<a href=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/"
                                                + content + "\"><img src=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/" + content + "\" alt=\"\"></a>\n");
                                    }
                                }
                            }
                        %>
                    </div>
                </li>
                <li>
                    <h3>Flight</h3>
                    <div class="gallery">
                        <%
                            if (!images.isEmpty()) {
                                for (String content : images) {
                                    if (!content.endsWith("/") && content.contains("flight")) {
                                        out.print("<a href=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/"
                                                + content + "\"><img src=\"https://s3.us-east-2.amazonaws.com/emccrary.com-images/" + content + "\" alt=\"\"></a>\n");
                                    }
                                }
                            }
                        %>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <!-- Footer -->

    <jsp:include page="footer.jsp"/>

</div>

<!-- Scripts -->
<jsp:include page="scripts.jsp"/>

</body>
</html>
