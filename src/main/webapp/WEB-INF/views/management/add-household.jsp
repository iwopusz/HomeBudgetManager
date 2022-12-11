<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="../../partials/_headTag.jspf" %>
<body>
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.jsp -->
        <%@include file="../../partials/_sidebar.jsp" %>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <form method="post" action='<c:url value="/add-household"/> '>
                                <div class="card-header py-3">
                                    <h5 class="m-0 font-weight-bold text-primary">Gospodarstwo</h5>
                                </div>
                                <div class="card-body">

                                    <p class="card-description">
                                        Podaj szczegóły:
                                    </p>

                                    <div class="form-group">
                                        <label for="exampleInputUsername1">Nazwa</label>
                                        <input type="text" class="form-control" name="name" id="exampleInputUsername1"
                                               placeholder="Username">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Adres</label>
                                        <input type="text" class="form-control" name="address" id="exampleInputName"
                                               placeholder="address">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Miasto</label>
                                        <input type="text" class="form-control" name="city" id="exampleInputEmail1"
                                               placeholder="city">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Aktualny budżet</label>
                                        <input type="number" class="form-control form-control-sm mt-2" step=".01" placeholder="0,00" name="current_balance"/>
                                    </div>

                                    <div class="card-body">
                                        <p class="display-4">Lista mieszkańców</p>
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Imię</th>
                                                    <th>Nazwisko</th>
                                                    <th> <button type="submit" class="btn btn-outline-success">+</button></th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-outline-success">Zapisz</button>
                                    <input type="hidden"
                                           name="${_csrf.parameterName}"
                                           value="${_csrf.token}"/>
                                    <!-- <button class="btn btn-light">Anuluj</button> -->
                                </div>
                                <div>

                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.jspf -->
            <%@include file="../../partials/_footer.jspf" %>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<%@include file="../../partials/_js.jspf" %>
</body>

</html>
