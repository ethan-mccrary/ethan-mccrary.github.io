<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Gnuplot</title>
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
                <h1>Gnuplot with C++</h1>
                <p>This program allows the user to input values that define several different curve stitchings. The user
                    can choose to draw an Epicycloid, Hypotrochoid, Butterfly Curve, and more.</p>
            </header>
            <div class="gallery">
                <a class="image"><img src="images/gnu/butterfly.png"></a>
                <a class="image"><img src="images/gnu/circle.png"></a>
                <a class="image"><img src="images/gnu/epicycloid.png"></a>
                <a class="image"><img src="images/gnu/hypocycloid.png"></a>
                <a class="image"><img src="images/gnu/hypotrochoid.png"></a>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>