<%-- 
    Document   : all_products
    Created on : 11 thg 7, 2023, 16:27:08
    Author     : nguye
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.product"%>
<%@page import="com.DAO.productDAOImpl"%>
<%@page import="com.DAO.productDAO"%>
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
    <body>
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        
        <h4 class="text-center" style="margin-top: 2%;">All Products</h4>

    <c:if test ="${not empty succMsg}">
        <p class="text-center text-success">${succMsg}</p>
        <c:remove var="succMsg" scope="session" />
    </c:if>

    <c:if test ="${not empty failedMsg}">
        <p class="text-center text-danger">${failedMsg}</p>
        <c:remove var="failedMsg" scope="session" />

    </c:if>

    <table class="table table-striped" style="margin-top: 2%;">
        <thead class="bg-dark text-white">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Image</th>
                <th scope="col">Product Name</th>
                <th scope="col">Brand</th>
                <th scope="col">Price</th>
                <th scope="col">Classify</th>
                <th scope="col">Size</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                productDAOImpl dao = new productDAOImpl(DBConnect.getConn());
                List<product> list = dao.getAllproduct();
                for (product pd : list) {
            %>
            <tr>
                <td><%=pd.getProductId()%></td>
                <td><img src="../img/<%=pd.getPhotoname()%>"
                         style="with: 50px; height:50px;"></td>
                <td><%=pd.getProductname()%></td>
                <td><%=pd.getBrand()%></td>
                <td><%=pd.getPrice()%>$</td>
                <td><%=pd.getClassify()%></td>
                <td><%=pd.getStatus()%></td>

                <td>
                    <a href="edit_product.jsp?id=<%=pd.getProductId()%>" class="btn btn-sm btn-primary"><i class='bx bxs-edit-alt' ></i>Edit</a>
                    <a href="../delete?id=<%=pd.getProductId()%>" class="btn btn-sm btn-danger"><i class='bx bxs-trash' ></i>Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <div>
        <%@include  file="footer.jsp" %>
    </div>

</body>
</html>
