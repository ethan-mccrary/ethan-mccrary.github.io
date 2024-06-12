<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Projects</title>
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
                <div class="row gtr-uniform">
                    <p>${queryResult}</p>
                </div>
            </form>

            <ul class="tabs" id="content">
                <li>
                    <!-- ALL PROJECTS -->
                    <h3>All</h3>
                    <div class="box" id="tic-tac-toe-app">
                        <h4>Tic-Tac-Toe App</h4>

                        <blockquote>
                            This project is an Android App programmed in Java that offers three variants of Tic-Tac-Toe
                            -- Numerical, Wild, and Notacto. The app implements certain features such as saving
                            progression on closing the app, multiple activities, and intents. This project was solely
                            developed by Ethan McCrary and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Tic-Tac-Toe_Variants"
                                   class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="order-and-chaos-app">
                        <h4>Order and Chaos App</h4>

                        <blockquote>
                            This project is an Android App that allows the users to play a variant of Tic-Tac-Toe called
                            Order and Chaos. The game consists of a 5x5 gameboard in which the players can choose
                            whether to place an X or an O. One player, Order, attempts to keep the other player, Chaos,
                            from getting five in a row of either Xs or Os. This app implements features of Android such
                            as intents, webviews, and Google Flexbox. This app was created completely by Ethan McCrary.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Order-and-Chaos" class="button next">Visit</a>
                            </li>
                        </ul>
                    </div>
                    <div class="box" id="meal-planner-app">
                        <h4>Meal Planner App</h4>

                        <blockquote>
                            This project is an Android app connected to an API. It allows the user to search through the
                            API using a comfortable user interface to add meals to a meal plan. Nutrient facts are
                            comipled together to give the user an idea as to how their meals will stack up. This app was
                            developed by myself and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Meal-Plan" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="simon-says-app">
                        <h4>Simon Says App</h4>

                        <blockquote>
                            This Android app is a recreation of the original Simon Says handheld game. It is complete
                            with minigames and an accurate scoring system. This app was developed by myself and Tanner
                            Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/simon" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="weather-app">
                        <h4>Weather App</h4>

                        <blockquote>
                            This app is a small weather app that connects and downloads information from the
                            OpenWeatherMap API. This information is displayed not only in-app, but also on the home
                            screen of the device on a widget if the user so chooses. The widget is resizable and
                            repositionable. This app was developed by myself and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Weather-App" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="text-based-word-cloud-generator">
                        <h4>Text-Based Word-Cloud Generator</h4>

                        <blockquote>
                            The user has the option to sort the word cloud alphabetically or by the number of times a
                            word appears throughout the text. Once the user has gone through the proper motions, any
                            .txt file can be used to generate an HTML file containing every word (unless the user chose
                            to filter stopwords) in the file ordered by their preference.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="word_cloud.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="gnuplot-with-c++">
                        <h4>GnuPlot with C++</h4>

                        <blockquote>
                            This program allows the user to input values that define several different curve stitchings.
                            The user can choose to draw an Epicycloid, Hypotrochoid, Butterfly Curve, and more.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="gnuplot.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="svg-shape-generator-in-c++">
                        <h4>SVG Shape Generator in C++</h4>

                        <blockquote>
                            This program allows the user to input values that define a mural of shapes. The user can
                            define the mural to be circles, triangles, squares, or a combination of all of these. The
                            user can define the size of the image as well as how many shapes will appear.
                        </blockquote>

                        <ul class="actions">
                            <li>
                                <a href="https://github.com/Ty-Haruki/SVG-Shape-Generator/blob/master/SVG-Shape-Generator/art.svg"
                                   class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="survival-builder-app-in-c#">
                        <h4>Survival Builder App in C#</h4>

                        <blockquote>
                            This application allows the user to save and load games, create and delete characters,
                            collect resources, and more. This game is programmed in C# on a WPF platform. It utilizes
                            serialization, multithreading, and more.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Survival-Builder" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="first-presbyterian-church-of-clarksville-tn">
                        <h4>First Presbyterian Church of Clarksville, TN</h4>

                        <blockquote>
                            During my time working for FPC as an information technology specialist, I was given the
                            opportunity to completely redesign the FPC website. I utilized PHP, HTML, CSS,
                            JavaScript/JQuery to create a modern, sleek user interface.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://fpcclarksville.org" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="devdiscussion">
                        <h4>DevDiscussion.org</h4>

                        <blockquote>
                            As a small side project, I developed a website named DevDiscussion.org. It was meant to
                            be a forum where developers could congregate and converse about problems or questions.
                            The site is still under construction, but many features that I wanted to test with are
                            implemented. The website features user accounts/profiles, creating/deleting posts,
                            commenting, and more. I utilized PHP and SQL to manage backend features, while I designed the layout with HTML, Materialize CSS, and JavaScript/JQuery.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://devdiscussion.org" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="analysis-of-mydoom.a">
                        <h4>Analysis of MyDoom.A</h4>

                        <blockquote>
                            Discussed in this paper are several types of analysis done with MyDoom.A. The analysis
                            consisted of three parts: static, dynamic, and code analysis. For static analysis, a live
                            copy of the MyDoom.A virus was taken. From there, hash values were checked and the
                            executable was analyzed using hex editors. In dynamic analysis, MyDoom.A was ran in a
                            virtual environment. From this, accessed files and generated processes were observed. For
                            code analysis, the source code of myDoom.A was analyzed and several key functions used to
                            initiate MyDoom.A's attacks were recorded. This project is a demonstration of the skills and
                            techniques that were acquired in studying malware analysis.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="mydoom_a.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="micro-benchmarking-algorithmic-sorting">
                        <h4>Micro-Benchmarking Algorithmic Sorting</h4>

                        <blockquote>
                            We created micro-benchmarking utilities for each test language: C++, Java, and Python, the
                            three highest rated programming languages according to the TIOBE index. The utility was used
                            to analyze each language’s ability to efficiently and quickly execute hard-coded sorting
                            algorithms.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="algorithmic_sorting.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>

                <!-- JAVA PROJECTS -->
                <li>
                    <h3>Java</h3>
                    <div class="box" id="tic-tac-toe-app-java">
                        <h4>Tic-Tac-Toe App</h4>

                        <blockquote>
                            This project is an Android App programmed in Java that offers three variants of Tic-Tac-Toe
                            -- Numerical, Wild, and Notacto. The app implements certain features such as saving
                            progression on closing the app, multiple activities, and intents. This project was solely
                            developed by Ethan McCrary and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Tic-Tac-Toe_Variants"
                                   class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="order-and-chaos-app-java">
                        <h4>Order and Chaos App</h4>

                        <blockquote>
                            This project is an Android App that allows the users to play a variant of Tic-Tac-Toe called
                            Order and Chaos. The game consists of a 5x5 gameboard in which the players can choose
                            whether to place an X or an O. One player, Order, attempts to keep the other player, Chaos,
                            from getting five in a row of either Xs or Os. This app implements features of Android such
                            as intents, webviews, and Google Flexbox. This app was created completely by Ethan McCrary.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Order-and-Chaos" class="button next">Visit</a>
                            </li>
                        </ul>
                    </div>
                    <div class="box" id="meal-planner-app-java">
                        <h4>Meal Planner App</h4>

                        <blockquote>
                            This project is an Android app connected to an API. It allows the user to search through the
                            API using a comfortable user interface to add meals to a meal plan. Nutrient facts are
                            comipled together to give the user an idea as to how their meals will stack up. This app was
                            developed by myself and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Meal-Plan" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="simon-says-app-java">
                        <h4>Simon Says App</h4>

                        <blockquote>
                            This Android app is a recreation of the original Simon Says handheld game. It is complete
                            with minigames and an accurate scoring system. This app was developed by myself and Tanner
                            Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/simon" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="weather-app-java">
                        <h4>Weather App</h4>

                        <blockquote>
                            This app is a small weather app that connects and downloads information from the
                            OpenWeatherMap API. This information is displayed not only in-app, but also on the home
                            screen of the device on a widget if the user so chooses. The widget is resizable and
                            repositionable. This app was developed by myself and Tanner Jones.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Weather-App" class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <!-- C++ PROJECTS -->
                    <h3>C++</h3>
                    <div class="box" id="text-based-word-cloud-generator-c++">
                        <h4>Text-Based Word-Cloud Generator</h4>

                        <blockquote>
                            The user has the option to sort the word cloud alphabetically or by the number of times a
                            word appears throughout the text. Once the user has gone through the proper motions, any
                            .txt file can be used to generate an HTML file containing every word (unless the user chose
                            to filter stopwords) in the file ordered by their preference.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="word_cloud.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="gnuplot-with-c++-c++">
                        <h4>GnuPlot with C++</h4>

                        <blockquote>
                            This program allows the user to input values that define several different curve stitchings.
                            The user can choose to draw an Epicycloid, Hypotrochoid, Butterfly Curve, and more.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="gnuplot.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="svg-shape-generator-in-c++-c++">
                        <h4>SVG Shape Generator in C++</h4>

                        <blockquote>
                            This program allows the user to input values that define a mural of shapes. The user can
                            define the mural to be circles, triangles, squares, or a combination of all of these. The
                            user can define the size of the image as well as how many shapes will appear.
                        </blockquote>

                        <ul class="actions">
                            <li>
                                <a href="https://github.com/Ty-Haruki/SVG-Shape-Generator/blob/master/SVG-Shape-Generator/art.svg"
                                   class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <!-- C# PROJECTS -->
                    <h3>C#</h3>
                    <div class="box" id="survival-builder-app-c#">
                        <h4>Survival Builder App in C#</h4>

                        <blockquote>
                            This application allows the user to save and load games, create and delete characters,
                            collect resources, and more. This game is programmed in C# on a WPF platform. It utilizes
                            serialization, multithreading, and more.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://github.com/Ty-Haruki/Survival-Builder" class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <!-- PHP PROJECTS -->
                    <h3>PHP</h3>
                    <div class="box" id="first-presbyterian-church-of-clarksville-tn-php">
                        <h4>First Presbyterian Church of Clarksville, TN</h4>

                        <blockquote>
                            During my time working for FPC as an information technology specialist, I was given the
                            opportunity to completely redesign the FPC website. I utilized PHP, HTML, CSS,
                            JavaScript/JQuery to create a modern, sleek user interface.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://fpcclarksville.org" class="button next">Visit</a></li>
                        </ul>
                    </div>

                    <div class="box" id="devdiscussion-php">
                        <h4>DevDiscussion.org</h4>

                        <blockquote>
                            As a small side project, I developed a website named DevDiscussion.org. It was meant to
                            be a forum where developers could congregate and converse about problems or questions.
                            The site is still under construction, but many features that I wanted to test with are
                            implemented. The website features user accounts/profiles, creating/deleting posts,
                            commenting, and more. I utilized PHP and SQL to manage backend features, while I designed the layout with HTML, Materialize CSS, and JavaScript/JQuery.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="https://devdiscussion.org" class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <!-- MISC PROJECTS -->
                    <h3>MISC</h3>
                    <div class="box" id="analysis-of-mydoom.a-misc">
                        <h4>Analysis of MyDoom.A</h4>

                        <blockquote>
                            Discussed in this paper are several types of analysis done with MyDoom.A. The analysis
                            consisted of three parts: static, dynamic, and code analysis. For static analysis, a live
                            copy of the MyDoom.A virus was taken. From there, hash values were checked and the
                            executable was analyzed using hex editors. In dynamic analysis, MyDoom.A was ran in a
                            virtual environment. From this, accessed files and generated processes were observed. For
                            code analysis, the source code of myDoom.A was analyzed and several key functions used to
                            initiate MyDoom.A's attacks were recorded. This project is a demonstration of the skills and
                            techniques that were acquired in studying malware analysis.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="mydoom_a.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                    <div class="box" id="micro-benchmarking-algorithmic-sorting-misc">
                        <h4>Micro-Benchmarking Algorithmic Sorting</h4>

                        <blockquote>
                            We created micro-benchmarking utilities for each test language: C++, Java, and Python, the
                            three highest rated programming languages according to the TIOBE index. The utility was used
                            to analyze each language’s ability to efficiently and quickly execute hard-coded sorting
                            algorithms.
                        </blockquote>

                        <ul class="actions">
                            <li><a href="algorithmic_sorting.jsp" class="button next">Visit</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>