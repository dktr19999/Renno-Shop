<%@page contentType="text/html" pageEncoding="UTF-8" %>

    <!doctype html>
    <html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Reid - contact us</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

    </head>

    <body>

        <!--Offcanvas menu area start-->
        <div class="off_canvars_overlay"></div>
        <jsp:include page="layout/menu.jsp" />
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area other_bread">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li>/</li>
                                <li>Contact</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->


        <!--contact area start-->
        <div class="contact_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message content">
                            <h3>Contact</h3>
                            <ul>
                                <li><i class="fa fa-fax"></i> New York, America</li>
                                <li><i class="fa fa-phone"></i> <a
                                        href="mailto:hotmail123@gmail.com">hotmail123@gmail.com</a></li>
                                <li><i class="fa fa-envelope-o"></i> 0123456789</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message form">
                            <h3>Send feedback</h3>
                            <form id="contact-form" method="GET"
                                action="https://script.google.com/macros/s/AKfycby2HoMCJyTeclcs-4VlInS-NG_hs161qiMTiuzUOpNZp_YRsmk/exec">
                                <p>
                                    <label> Email address</label>
                                    <input name="Email" pattern="[^ @]*@[^ @]*" placeholder="Email *" required=""
                                        value="" type="email">
                                </p>
                                <p>
                                    <label> Title</label>
                                    <input name="Subject" placeholder="Subject *" required="" value="" type="text">
                                </p>
                                <div class="contact_textarea">
                                    <label> Information</label>
                                    <input placeholder="Message *" name="Message" required="" value=""
                                        class="form-control2">
                                </div>
                                <br>
                                <button type="submit"> Send</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--contact area end-->

        <!--contact map start-->
        <div class="contact_map">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="map-area">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387193.30594994064!2d-74.25986652425023!3d40.69714941680757!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2zVGjDoG5oIHBo4buRIE5ldyBZb3JrLCBUaeG7g3UgYmFuZyBOZXcgWW9yaywgSG9hIEvhu7M!5e0!3m2!1svi!2s!4v1647982957276!5m2!1svi!2s"
                                width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--contact map end-->

        <jsp:include page="layout/footer.jsp" />

        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
    </body>

    </html>