<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<div class="container" style="padding-top: 1%;">
    <div class="row">
        <div class="col-md-3" style="right: 5%;">
            <h3>SILICON</h3>
        </div>

        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"  style="width: 80%;">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> 
        </div>

        <div class="col-md-3"  style="left: 5%;">
            <c:if test="${not empty userobj}">
                <a href="login.jsp" class="btn btn-success"><i class='bx bx-user'></i> ${userobj.name}</a>
                <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white"><i class='bx bx-log-out' ></i> Logout</a>
            </c:if>

            <c:if test="${empty userobj}">
                <a href="../login.jsp" class="btn btn-success"><i class='bx bx-user'></i> Login</a>
                <a href="../register.jsp" class="btn btn-primary"><i class='bx bx-user-plus' ></i> Register</a>
            </c:if>

        </div>
    </div>
</div>
<!--Logout-->
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

<nav class="navbar navbar-expand-lg navbar-light bg-info" style="padding-top: 1%;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp">
                    <i class='bx bx-home'></i> Home <span class="sr-only">(current)</span></a>
            </li>
    </div>
</nav>