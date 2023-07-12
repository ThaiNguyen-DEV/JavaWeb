<%-- 
    Document   : add_product
    Created on : 11 thg 7, 2023, 16:22:50
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f7f7f7;">
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add Products</h4>
                            
                            <c:if test ="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session" />
                            </c:if>

                            <c:if test ="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session" />

                            </c:if>
                                
                            <form action="../add_products" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Product Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="bname">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Brand</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="brand">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Price</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" name="price">
                                </div>
                                <div class="form-group">
                                    <label for="inputState">Classify</label>
                                    <select class="form-control" id="inputState" name="classify">
                                        <option value="Last Collection">Last Collection</option>
                                        <option value="New Collection">New Product</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputState">Size</label>
                                    <select class="form-control" id="inputState" name="status">
                                        <option value = "S" > S </option>
                                        <option value = "M" > M </option>
                                        <option value = "L" > L </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Upload Image</label>

                                    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="bimg">
                                </div>

                                <button style="margin-left: 40%;" type="submit" class="btn btn-primary">Add</button><br>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <%@include  file="footer.jsp" %>
        </div>

    </body>
</html>
