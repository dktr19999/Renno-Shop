<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Admin</title>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Main CSS-->
            <link rel="stylesheet" type="text/css" href="admin/css/main.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
            <!-- or -->
            <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
            <!-- Font-icon css-->
            <link rel="stylesheet" type="text/css"
                href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

        </head>

        <body onload="time()" class="app sidebar-mini rtl">
            <!-- Navbar-->
            <header class="app-header">
                <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                    aria-label="Hide Sidebar"></a>
                <!-- Navbar Right Menu-->
                <ul class="app-nav">


                    <!-- User Menu-->
                    <li><a class="app-nav__item" href="home"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                    </li>
                </ul>
            </header>
            <!-- Sidebar menu-->
            <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
            <aside class="app-sidebar">
                <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="admin/images/user.png"
                        width="50px" alt="User Image">
                    <div>
                        <p class="app-sidebar__user-name"><b>${sessionScope.user.user_name}</b></p>
                        <p class="app-sidebar__user-designation">Welcome back</p>
                    </div>
                </div>
                <hr>
                <ul class="app-menu">
                    <li><a class="app-menu__item" href="dashboard"><i class='app-menu__icon bx bx-tachometer'></i><span
                                class="app-menu__label">Dashboard</span></a></li>
                    <li><a class="app-menu__item" href="customermanager"><i
                                class='app-menu__icon bx bx-user-voice'></i><span class="app-menu__label">Customer
                                management</span></a></li>
                    <li><a class="app-menu__item" href="productmanager"><i
                                class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product
                                Management</span></a>
                    </li>
                    <li><a class="app-menu__item" href="ordermanager"><i class='app-menu__icon bx bx-task'></i><span
                                class="app-menu__label">Order management</span></a></li>
                </ul>
            </aside>
            <main class="app-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="app-title">
                            <ul class="app-breadcrumb breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><b>Dashboard</b></a></li>
                            </ul>
                            <div id="clock"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="row">
                            <!-- col-6 -->
                            <div class="col-md-6">
                                <div class="widget-small primary coloured-icon"><i
                                        class='icon bx bxs-user-account fa-3x'></i>
                                    <div class="info">
                                        <h4>Total customers</h4>
                                        <p><b>${requestScope.user} clients</b></p>
                                        <p class="info-tong">Total number of clients managed.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- col-6 -->
                            <div class="col-md-6">
                                <div class="widget-small info coloured-icon"><i class='icon bx bxs-data fa-3x'></i>
                                    <div class="info">
                                        <h4>Total Product</h4>
                                        <p><b>${requestScope.product} products</b></p>
                                        <p class="info-tong">Total number of products managed.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- col-6 -->
                            <div class="col-md-6">
                                <div class="widget-small warning coloured-icon"><i
                                        class='icon bx bxs-shopping-bags fa-3x'></i>
                                    <div class="info">
                                        <h4>Total Order</h4>
                                        <p><b>${requestScope.bill} orders</b></p>
                                        <p class="info-tong">Total sales invoices for the month.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- col-6 -->
                            <div class="col-md-6">
                                <div class="widget-small danger coloured-icon"><i
                                        class='icon bx bxs-error-alt fa-3x'></i>
                                    <div class="info">
                                        <h4>Sold out soon</h4>
                                        <p><b>${requestScope.low} products</b></p>
                                        <p class="info-tong">The number of warning products is out of stock.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- col-12 -->
                            <div class="col-md-12">
                                <div class="tile">
                                    <h3 class="tile-title">Today's Order</h3>
                                    <div>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Order ID</th>
                                                    <th>Customers</th>
                                                    <th>Phone number</th>
                                                    <th>Address</th>
                                                    <th>Purchase Date</th>
                                                    <th>Total amount</th>
                                                    <th>Payment</th>
                                                    <th>Function</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${billbyday}" var="b">
                                                    <tr>
                                                        <td>${b.bill_id}</td>
                                                        <td>${b.user.user_name}</td>
                                                        <td>(+84)${b.phone}</td>
                                                        <td>${b.address}</td>
                                                        <td>${b.date}</td>
                                                        <td>${b.total}</td>
                                                        <td><span class="badge bg-success">${b.payment}</span></td>
                                                        <td><a style=" color: rgb(245 157 57);background-color: rgb(251 226 197); padding: 5px;border-radius: 5px;"
                                                                href="ordermanager?action=showdetail&bill_id=${b.bill_id}"><i
                                                                    class="fa"></i>Order details</a></td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- / col-12 -->
                        </div>
                    </div>
                </div>


                <div class="text-center" style="font-size: 13px">
                    <p><b>Copyright
                            <script type="text/javascript">
                                document.write(new Date().getFullYear());
                            </script> Phần mềm quản lý Website
                        </b></p>
                </div>
            </main>
            <script src="admin/js/jquery-3.2.1.min.js"></script>
            <!--===============================================================================================-->
            <script src="admin/js/popper.min.js"></script>
            <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
            <!--===============================================================================================-->
            <script src="admin/js/bootstrap.min.js"></script>
            <!--===============================================================================================-->
            <script src="admin/js/main.js"></script>
            <!--===============================================================================================-->
            <script src="admin/js/plugins/pace.min.js"></script>
            <!--===============================================================================================-->
            <!--===============================================================================================-->
            <script type="text/javascript">
                var data = {
                    labels: ["January", "February", "March", "April", "May", "June"],
                    datasets: [{
                        label: "First data",
                        fillColor: "rgba(255, 213, 59, 0.767), 212, 59)",
                        strokeColor: "rgb(255, 212, 59)",
                        pointColor: "rgb(255, 212, 59)",
                        pointStrokeColor: "rgb(255, 212, 59)",
                        pointHighlightFill: "rgb(255, 212, 59)",
                        pointHighlightStroke: "rgb(255, 212, 59)",
                        data: [20, 59, 90, 51, 56, 100]
                    },
                    {
                        label: "Next Data",
                        fillColor: "rgba(9, 109, 239, 0.651)  ",
                        pointColor: "rgb(9, 109, 239)",
                        strokeColor: "rgb(9, 109, 239)",
                        pointStrokeColor: "rgb(9, 109, 239)",
                        pointHighlightFill: "rgb(9, 109, 239)",
                        pointHighlightStroke: "rgb(9, 109, 239)",
                        data: [48, 48, 49, 39, 86, 10]
                    }
                    ]
                };
                var ctxl = $("#lineChartDemo").get(0).getContext("2d");
                var lineChart = new Chart(ctxl).Line(data);

                var ctxb = $("#barChartDemo").get(0).getContext("2d");
                var barChart = new Chart(ctxb).Bar(data);
            </script>
            <script type="text/javascript">
                //Thời Gian
                function time() {
                    var today = new Date();
                    var weekday = new Array(7);
                    weekday[0] = "Sunday";
                    weekday[1] = "Monday";
                    weekday[2] = "Tuesday";
                    weekday[3] = "Wednesday";
                    weekday[4] = "Thursday";
                    weekday[5] = "Friday";
                    weekday[6] = "Saturday";
                    var day = weekday[today.getDay()];
                    var dd = today.getDate();
                    var mm = today.getMonth() + 1;
                    var yyyy = today.getFullYear();
                    var h = today.getHours();
                    var m = today.getMinutes();
                    m = checkTime(m);
                    nowTime = h + ":" + m + "";
                    if (dd < 10) {
                        dd = '0' + dd
                    }
                    if (mm < 10) {
                        mm = '0' + mm
                    }
                    today = day + ', ' + dd + '/' + mm + '/' + yyyy;
                    tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                        '</span>';
                    document.getElementById("clock").innerHTML = tmp;
                    clocktime = setTimeout("time()", "1000", "Javascript");

                    function checkTime(i) {
                        if (i < 10) {
                            i = "0" + i;
                        }
                        return i;
                    }
                }
            </script>
        </body>

        </html>