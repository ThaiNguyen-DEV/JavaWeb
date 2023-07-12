<%-- 
    Document   : view
    Created on : 12 thg 7, 2023, 02:51:43
    Author     : nguye
--%>

<%@page import="com.DAO.productDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allCss.jsp" %>

    </head>
    <body style="background-color: #f7f7f7;">
        
        <%
        int bid=Integer.parseInt(request.getParameter("bid"));
        productDAOImpl dao=new productDAOImpl(DBConnect.getConn());
        product pd=dao.getProductById(bid);
        %>
        
        <%@include file="all_component/navbar.jsp" %>
        <div class="container p-3">
            <div class="row">
                <div class="col-md-6 text-center p-5 border bg-white">
                    <img src="img/<%=pd.getPhotoname()%>" style="height: 200px; width: 150px"><br>
                    <h4 class="mt-3"><%=pd.getProductname()%></h4>
                    <h4>Brand: <%=pd.getBrand()%></h4>
                </div>
                    
                <div class="col-md-6 text-center p-5 border bg-white">
                    <h2 class="mt-4"><%=pd.getProductname()%></h2>
                    <p>Time to elevate your T-shirt collection? This tee answers the call. Heavyweight cotton and a clean, embroidered Futura logo keep it simple for pairing up with any outfit. The oversize fit gives you plenty of extra space for casual style and easy layering.</p>
                    <div class="row" style="margin-left: 35%;">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class='bx bx-cart-add'></i> Add Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
