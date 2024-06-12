<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Word Clouds</title>
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
                <h1>Text-Based Word-Cloud Generator</h1>
                <p>The user has the option to sort the word cloud alphabetically or by the number of times a word
                    appears throughout the text. Once the user has gone through the proper motions, any .txt file can be
                    used to generate an HTML file containing every word (unless the user chose to filter stopwords) in
                    the file ordered by their preference.</p>
            </header>
            <a class="image fit"><img src="images/word_cloud.png"></a>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>