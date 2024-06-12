<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>About Me</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body class="is-preload">

<!-- Page wrapper -->
<div id="page-wrapper">

    <jsp:include page="header.jsp"/>

    <!-- Main -->
    <section id="main" class="wrapper style2">
        <div class="inner">
            <header class="major special">
                <h1>Resume</h1>
                <p>Updated as of January 2021.</p>
            </header>

            <span class="image fit">
                <a href="doc/resume-2021.pdf" download><img src="images/resume-2021.png"></a>
            </span>

            <ul class="actions">
                <li><a href="doc/resume-2021.pdf" class="button next" download>Download</a></li>
            </ul>

        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>