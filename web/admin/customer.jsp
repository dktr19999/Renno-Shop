<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>List of employees | Admin</title>
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
                    <li><a class="app-nav__item" href="dashboard"><i class='bx bx-log-out bx-rotate-180'></i> </a>

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
                <div class="app-title">
                    <ul class="app-breadcrumb breadcrumb side">
                        <li class="breadcrumb-item active"><a href="#"><b>User list</b></a></li>
                    </ul>
                    <div id="clock"></div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="tile">
                            <div class="tile-body">

                                <div class="row element-button">
                                    <div class="col-sm-2">
                                        <a class="btn btn-delete btn-sm print-file" type="button" title="In"
                                            onclick="myApp.printTable()"><i class="fas fa-print"></i> Print data</a>
                                    </div>
                                </div>

                                <table class="table table-hover table-bordered js-copytextarea" cellpadding="0"
                                    cellspacing="0" border="0" id="sampleTable">
                                    <thead>
                                        <tr>
                                            <th>Customer ID</th>
                                            <th>Customer name</th>
                                            <th>Email</th>
                                            <th>isAdmin</th>
                                            <th width="70">Features</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${user}" var="u">
                                            <tr>
                                                <td>${u.user_id}</td>
                                                <td>${u.user_name}</td>
                                                <td>${u.user_email}</td>
                                                <td>${u.isAdmin}</td>
                                                <td><button class="btn btn-primary btn-sm edit" type="button"
                                                        title="Sửa" id="show-emp" data-toggle="modal"
                                                        data-target="#ModalUP${u.user_id}"><i
                                                            class="fas fa-edit"></i></button></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <c:forEach items="${user}" var="u">
                <div class="modal fade" id="ModalUP${u.user_id}" tabindex="-1" role="dialog" aria-hidden="true"
                    data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <form method="POST" action="customermanager?action=update">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="form-group  col-md-12">
                                            <span class="thong-tin-thanh-toan">
                                                <h5>Add As Administrator</h5>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="exampleSelect1" class="control-label">Administration</label>
                                            <input hidden name="user_id" value="${u.user_id}">
                                            <select name="permission" class="form-control" id="exampleSelect1">
                                                <option value="True">Allow</option>
                                                <option value="False">Cancel</option>
                                            </select>
                                        </div>
                                    </div>
                                    <BR>
                                    <button class="btn btn-save" type="submit">Save</button>
                                    <a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
                                    <BR>
                                </div>
                            </form>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- Essential javascripts for application to work-->
            <script src="admin/js/jquery-3.2.1.min.js"></script>
            <script src="admin/js/popper.min.js"></script>
            <script src="admin/js/bootstrap.min.js"></script>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <script src="admin/js/main.js"></script>
            <!-- The javascript plugin to display page loading on top-->
            <script src="admin/js/plugins/pace.min.js"></script>
            <!-- Page specific javascripts-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
            <!-- Data table plugin-->
            <script type="text/javascript" src="admin/js/plugins/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="admin/js/plugins/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript">$('#sampleTable').DataTable();</script>
            <script>
                function deleteRow(r) {
                    var i = r.parentNode.parentNode.rowIndex;
                    document.getElementById("myTable").deleteRow(i);
                }
                jQuery(function () {
                    jQuery(".trash").click(function () {
                        swal({
                            title: "Warning",

                            text: "Are you sure you want to delete this employee?",
                            buttons: ["Cancel", "Agree"],
                        })
                            .then((willDelete) => {
                                if (willDelete) {
                                    swal("Successfully deleted.!", {

                                    });
                                }
                            });
                    });
                });

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
                    var s = today.getSeconds();
                    m = checkTime(m);
                    s = checkTime(s);
                    nowTime = h + "hours" + m + "minutes" + s + "seconds";
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
                //In dữ liệu
                var myApp = new function () {
                    this.printTable = function () {
                        var tab = document.getElementById('sampleTable');
                        var win = window.open('', '', 'height=700,width=700');
                        win.document.write(tab.outerHTML);
                        win.document.close();
                        win.print();
                    }
                }

            </script>
        </body>

        </html>