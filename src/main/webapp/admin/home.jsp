<%-- 
    Document   : home
    Created on : 9 thg 7, 2023, 17:16:19
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <%@include file="allCss.jsp" %>
        <style type="text/css">
            a{
                text-decoration: none;
                color: black;
            }

            a:hover{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body style="background-color: #f7f7f7;">
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>

        <div class="container">
            <div class="row p-5">
                <div class="col-md-3">
                    <a href="add_product.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class='bx bx-add-to-queue text-primary'></i>
                                <h4>Add Product</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="all_products.jsp">

                        <div class="card">
                            <div class="card-body text-center">
                                <i class='bx bx-store text-warning'></i>                            
                                <h4>All Products</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="orders.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class='bx bx-package text-success' ></i>
                                <h4>Orders</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a data-toggle="modal" data-target="#exampleModalCenter">
                        <div class="card">
                        <div class="card-body text-center">
                            <i class='bx bx-log-out' ></i>
                            <h4>Log Out</h4>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <!--                <h5 class="modal-title" id="exampleModalLongTitle">Logout</h5>-->
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <h4>Are you sure?</h4>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="../logout" type="button" class="btn btn-primary">Yes</a>
                        </div>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
        <!--End Logout-->

        <div style="margin-top: 9%;">
            <%@include  file="footer.jsp" %>
        </div>
    </body>
</html>
