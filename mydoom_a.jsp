<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>MyDoom.A</title>
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
                <h1>Analysis of MyDoom.A</h1>
                <p>Discussed in this paper are several types of analysis done with MyDoom.A. The analysis consisted of
                    three parts: static, dynamic, and code analysis. For static analysis, a live copy of the MyDoom.A
                    virus was taken. From there, hash values were checked and the executable was analyzed using hex
                    editors. In dynamic analysis, MyDoom.A was ran in a virtual environment. From this, accessed files
                    and generated processes were observed. For code analysis, the source code of myDoom.A was analyzed
                    and several key functions used to initiate MyDoom.A's attacks were recorded. This project is a
                    demonstration of the skills and techniques that were acquired in studying malware analysis.</p>
            </header>
            <object data="doc/MyDoom.A-Analysis.pdf" type="application/pdf"
                    style="min-height:100vh;width:100%"></object>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>