<%-- 
    Document   : all_shop
    Created on : 12 thg 7, 2023, 01:58:50
    Author     : nguye
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.product"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.productDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Last Collection</title>
        <%@include file="all_component/allCss.jsp" %>

    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row p-3">
                <%
                    productDAOImpl dao3 = new productDAOImpl(DBConnect.getConn());
                    List<product> list3 = dao3.getAllLastCollection();
                    for (product pd : list3) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho" style="border-radius:5px;">
                        <div class="card-body text-center">
                            <img alt="" src="img/<%=pd.getPhotoname()%>" style="width: 150px; height: 200px" class="img-thumblin">
                            <p><%=pd.getProductname()%></p>
                            <p><%=pd.getBrand()%></p>
                            <p>Classify: <%=pd.getClassify()%></p>
                            <div class="row" style="padding-top:2%;">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class='bx bx-x'></i> Sold Out</a>
                                <a href="view.jsp?bid=<%=pd.getProductId()%>" class="btn btn-success btn-sm ml-3"><i class='bx bxs-detail' ></i> View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
