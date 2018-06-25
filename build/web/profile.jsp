<%-- 
    Document   : sign-up
    Created on : Jun 21, 2018, 7:04:46 AM
    Author     : X453SA
    --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/dbimport.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deutsche Bahn - Profile</title>
        <link rel="stylesheet" href="source/css/main.css">
        <%@include file="includes/cssimport.jsp" %>
    </head>
    <body>
        <%@include file="includes/dbconnect.jsp" %>
        <%@include file="includes/header.jsp" %>
        <c:choose>
                    <c:when test="${sessionScope.username != null}">
                        
                    </c:when>
                    <c:otherwise>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                // Handler for .ready() called.
                                alert("You haven't Logged in, please login first");
                                window.location.href = "index.jsp";
                            }); 
                        </script>
                    </c:otherwise>
                </c:choose>
                    <sql:query dataSource="${snapshot}" var="result">
                        SELECT * FROM user WHERE username="${sessionScope.username}";
                    </sql:query>
        <div class="container-fluid ml-2 mr-2 mt-5 mb-5" >
            <!-- Extended material form grid -->
            <div class="row mt-5">
                
            </div>
            <div class="row mt-5">
                <div class="col-lg-3">
                    <div class="card testimonial-card">
                        
                <!--Background color-->
                <div class="card-up red">
                </div>

                <!--Avatar-->
                <div class="avatar mx-auto white"><img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(27).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                </div>
                <c:forEach var="row" items="${result.rows}">
                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1">${row.name}</h4>
                    <hr>
                    <!--Quotation-->
                    
                    <div class="text-md-left">
                    <p><i class="fa fa-map-signs"></i>&nbsp;&nbsp; ${row.city}</p>
                    <p><i class="fa fa-transgender"></i>&nbsp;&nbsp; ${row.gender}</p>
                    <p><i class="fa fa-globe"></i>&nbsp;&nbsp; www.johndoe.com</p>
                    <p><i class="fa fa-credit-card"></i>&nbsp;&nbsp; ${row.ident}</p>
                    </c:forEach>
                    </div>
                </div>

            </div>
            <!--Card-->
                </div>
                <div class="col-lg-9">
                    <!-- Classic tabs -->
                    <div class="classic-tabs">
                        <!-- Nav tabs -->
                        <div class="tabs-wrapper">
                            <ul class="nav tabs-red" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link waves-light active" data-toggle="tab" href="#panel1011" role="tab">
                                    <i class="fa fa-user fa-2x" aria-hidden="true"></i>
                                    <br> Profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link waves-light" data-toggle="tab" href="#panel1012" role="tab">
                                    <i class="fa fa-ticket fa-2x" aria-hidden="true"></i>
                                    <br> Your Bookings</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link waves-light" data-toggle="tab" href="#panel1013" role="tab">
                                    <i class="fa fa-pencil fa-2x" aria-hidden="true"></i>
                                    <br> Edit Data</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Tab panels -->
                        <div class="tab-content card">
                            <!--Panel 1-->
                            <div class="tab-pane fade in show active" id="panel1011" role="tabpanel">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
                                    reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
                                    porro voluptate odit minima.
                                </p>
                            </div>
                            <!--/.Panel 1-->
                            <!--Panel 2-->
                            <div class="tab-pane fade" id="panel1012" role="tabpanel">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
                                    reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
                                    porro voluptate odit minima.
                                </p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
                                    reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
                                    porro voluptate odit minima.
                                </p>
                            </div>
                            <!--/.Panel 2-->
                            <!--Panel 3-->
                            <div class="tab-pane fade" id="panel1013" role="tabpanel">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
                                    reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
                                    porro voluptate odit minima.
                                </p>
                            </div>
                            <!--/.Panel 3-->
                            <!--Panel 4-->
                            <div class="tab-pane fade" id="panel1014" role="tabpanel">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
                                    reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
                                    porro voluptate odit minima.
                                </p>
                            </div>
                            <!--/.Panel 4-->
                        </div>
                    </div>
                    <!-- Classic tabs -->
                </div>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
        <%@include file="includes/loginmodal.jsp" %>
        <%@include file="includes/scriptimport.jsp" %>
    </body>
</html>