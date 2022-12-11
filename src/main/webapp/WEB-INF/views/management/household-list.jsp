<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<%@include file="../../partials/_headTag.jspf" %>
<body>
    <!-- partial:partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.jsp -->
        <%@include file="../../partials/_sidebar.jsp" %>
        <!-- partial -->

        <!-- DataTales Example -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h5 class="m-0 font-weight-bold text-primary">DGOSPODRASTWA</h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nazwa</th>
                                                <th>Adres</th>
                                                <th>Miasto</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${household}" var="households">
                                                <tr>
                                                    <td>${households.id}</td>
                                                    <td>${households.name}</td>
                                                    <td>${households.address}</td>
                                                    <td>${households.city}</td>
                                                    <td><a href='<c:url value="/edit-household/${households.id}"/>'
                                                           class="btn-left btn btn-outline-primary"
                                                           role="button">Edytuj</a>
                                                        <a href='<c:url value="/delete-household/${households.id}"/>'
                                                           class="btn-left btn btn-outline-danger"
                                                           role="button">Usuń</a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <br>
                                        <a href='<c:url value="/add-household"/>' class="btn btn-outline-success" role="button">Dodaj nowego</a>
                                        <input type="hidden"
                                               name="${_csrf.parameterName}"
                                               value="${_csrf.token}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.jspf -->
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