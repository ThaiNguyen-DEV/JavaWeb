

<%@page import="java.util.List"%>
<%@page import="com.entity.product"%>
<%@page import="com.DAO.productDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SILICON SHOP</title>
        <%@include file="all_component/allCss.jsp" %>

        <style type="text/css">


            .crd-ho:hover{
                background:#dcdfe3 ;
            }
        </style>

    </head>
    <body style="background-color: #f7f7f7;">
        
        
        <%@include file="all_component/navbar.jsp" %>

<!--        <div class="container-fluid back-img">
            <h2 class="text-center text-success">SILICON Shop</h2>
        </div>-->

        <!--SHOP-->
        <div class="container">
            <h3 class="text-center">S H O P</h3>
            <div class="row">
                <%
                    productDAOImpl dao2 = new productDAOImpl(DBConnect.getConn());
                    List<product> list2 = dao2.getShop();
                    for (product pd : list2) {
                %>
                <div class="col-md-3">

                    <div class="card crd-ho" style="border-radius:5px;">
                        <div class="card-body text-center">
                            <img src="img/<%=pd.getPhotoname()%>" style="width: 150px; height: 200px">
                            <p><%=pd.getProductname()%></p>
                            <p><%=pd.getBrand()%></p>
                            <p>
                                <%
                                    if (pd.getClassify().equals("Last Collection")) {
                                %>
                                Classify: <%=pd.getClassify()%></p>
                            <div class="row" style="padding-top:16%;">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class='bx bx-x'></i> Sold Out</a>
                                <a href="view.jsp?bid=<%=pd.getProductId()%>" class="btn btn-success btn-sm ml-3"><i class='bx bxs-detail' ></i> View Details</a>
                            </div>
                            <%
                            } else {%>
                            Classify: <%=pd.getClassify()%></p>
                            <a href="" class="btn btn-info btn-sm"><%=pd.getPrice()%>$</a>
                            <div class="row" style="padding-top:2%;">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class='bx bx-cart-add'></i> Add Cart</a>
                                <a href="view.jsp?bid=<%=pd.getProductId()%>" class="btn btn-success btn-sm ml-3"><i class='bx bxs-detail' ></i> View Details</a>
                            </div>
                            <%}
                            %>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1" style="padding-top:2%;">
                <a href="all_shop.jsp" class="btn btn-warning btn-sm text-white">MORE</a>
            </div>
        </div>
        <!--END SHOP-->
        <hr>
        <!--NEW COLLECTION-->
        <div class="container">
            <h3 class="text-center">NEW COLLECTION</h3>
            <div class="row">
                <%
                    productDAOImpl dao = new productDAOImpl(DBConnect.getConn());
                    List<product> list = dao.getNewProduct();
                    for (product pd : list) {
                %>
                <div class="col-md-3">

                    <div class="card crd-ho" style="border-radius:5px;">
                        <div class="card-body text-center">
                            <img alt="" src="img/<%=pd.getPhotoname()%>" style="width: 150px; height: 200px" class="img-thumblin">
                            <p><%=pd.getProductname()%></p>
                            <p><%=pd.getBrand()%></p>
                            <p>Classify: <%=pd.getClassify()%></p>
                            <a href="" class="btn btn-info btn-sm"><%=pd.getPrice()%>$</a>
                            <div class="row" style="padding-top:2%;">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class='bx bx-cart-add'></i> Add Cart</a>
                                <a href="view.jsp?bid=<%=pd.getProductId()%>" class="btn btn-success btn-sm ml-3"><i class='bx bxs-detail' ></i> View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1" style="padding-top:2%;">
                <a href="all_new_collection.jsp" class="btn btn-warning btn-sm text-white">MORE</a>
            </div>
        </div>
        <!--END NEW COLLECTION-->
        <hr>
        <!--LAST COLLECTION-->
        <div class="container">
            <h3 class="text-center">LAST COLLECTION</h3>
            <div class="row">
                <%
                    productDAOImpl dao3 = new productDAOImpl(DBConnect.getConn());
                    List<product> list3 = dao3.getLastProduct();
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
            <div class="text-center mt-1" style="padding-top:2%;">
                <a href="all_last_collection.jsp" class="btn btn-warning btn-sm text-white">MORE</a>
            </div>
        </div>
        <!--END LAST COLLECTION-->

        <%@include file="all_component/footer.jsp"%>

    </body>
</html>
