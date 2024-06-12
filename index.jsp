<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Emccrary.com</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body class="is-preload">

<!-- Page wrapper -->
<div id="page-wrapper">

    <jsp:include page="header.jsp"/>

    <!-- Banner -->
    <section id="banner">
        <div class="inner">
            <h1>Ethan McCrary</h1>
            <div class="content">
                <p>I am a college graduate skilled in web development, software development, and information assurance
                    and security. Astrophotography is my hobby.</p>
                <ul class="actions special">
                    <li><a href="projects.jsp" class="button large next">My Work</a></li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <section id="contact" class="wrapper style2">
        <div class="inner">
            <div class="split">
                <!--
                <div class="content">
                    <header>
                        <h2>Contact Me</h2>
                    </header>
                    <form method="post" action="${pageContext.request.contextPath}/emailServlet">
                        <div class="row gtr-uniform">
                            <div class="col-6 col-12-xsmall">
                                <input type="text" name="fname" id="fname" placeholder="First Name"/>
                            </div>
                            <div class="col-6 col-12-xsmall">
                                <input type="text" name="lname" id="lname" placeholder="Last Name"/>
                            </div>
                            <div class="col-6 col-12-xsmall">
                                <input type="email" name="email" id="email" placeholder="Email"/>
                            </div>
                            <div class="col-6 col-12-small">
                                <input type="checkbox" id="copy" name="copy" checked>
                                <label for="copy">Email me a copy of this message</label>
                            </div>

                            <div class="col-12">
                                <input type="checkbox" id="captcha" name="captcha">
                                <label for="captcha">Click to verify that you are a human</label>
                            </div>

                            <div class="col-12">
                                <textarea name="message" id="message" placeholder="Enter your message"
                                          rows="6"></textarea>
                            </div>

                            <div class="col-12">
                                <ul class="actions">
                                    <li><input type="submit" value="Get in Touch"/></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>-->
                <div class="content">
                    <header>
                        <h2>Contact Me</h2>
                    </header>
                    <p>My contact form is currently undergoing maintenance due to a conflict with the JavaMailer
                        API and GMail! Check back again soon to get in contact, or click on one of the links on the
                        side for your preferred method of contact.</p>
                </div>
                <ul class="contact-icons">
                    <li><a href="https://www.facebook.com/ethanjusino" class="icon brands alt fa-facebook-f"></a></li>
                    <li><a href="https://www.linkedin.com/in/ethan-mccrary/" class="icon brands alt fa-linkedin"></a>
                    </li>
                    <li><a href="https://github.com/Ty-Haruki" class="icon brands alt fa-github"></a></li>
                    <li><a href="mailto:ethanjusino@gmail.com" class="icon solid alt fa-envelope"></a></li>
                </ul>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>

</div>

<jsp:include page="scripts.jsp"/>

</body>
</html>