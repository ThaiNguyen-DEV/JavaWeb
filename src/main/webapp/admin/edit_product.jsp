<%-- 
    Document   : add_product
    Created on : 11 thg 7, 2023, 16:22:50
    Author     : nguye
--%>

<%@page import="com.entity.product"%>
<%@page import="com.DAO.productDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DB.DBConnect"%>
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
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Edit Products</h4>

                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                productDAOImpl dao = new productDAOImpl(DBConnect.getConn());
                                product pd = dao.getProductById(id);
                            %>


                            <form action="../editproduct" method="post">
                                <input type="hidden" name="id" value="<%=pd.getProductId()%>"
                                       <div class="form-group">
                                <label for="exampleInputEmail1">Product Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="bname" value="<%=pd.getProductname()%>">
                                </div>
                                <div class="form-group" style="width: 88%; margin-left: 20px;">
                                    <label for="exampleInputPassword1">Brand</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="brand" value="<%=pd.getBrand()%>">
                                </div>
                                <div class="form-group" style="width: 88%; margin-left: 20px;">
                                    <label for="exampleInputEmail1">Price</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" name="price" value="<%=pd.getPrice()%>">
                                </div>
                                <div class="form-group" style="width: 88%; margin-left: 20px;">
                                    <label for="inputState">Size</label>
                                    <select class="form-control" id="inputState" name="status">
                                        <%
                                            if ("S".equals(pd.getStatus())) {
                                        %>
                                        <option value = "S" > S </option>
                                        <option value = "M" > M </option>
                                        <option value = "L" > L </option>

                                        <%
                                        } else {
                                        %>
                                        <option value = "S" > S </option>
                                        <option value = "M" > M </option>
                                        <option value = "L" > L </option>

                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <button style="width: 30%; margin-left: 35%;" type="submit" class="btn btn-primary">Update</button><br>
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
