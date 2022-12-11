<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<%@include file="../../partials/_headTag.jspf" %>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.jspf -->
        <%@include file="../../partials/_sidebar.jspf" %>
        <!-- partial -->

        <!-- DataTales Example -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">UŻYTKOWNICY</h6>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Imię</th>
                                                <th>Nazwisko</th>
                                                <th>E-mail</th>
                                                <th>Username</th>
                                                <th>Password</th>
                                                <th>Uprawnienia</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${person}" var="person">
                                                <tr>
                                                    <td>${person.id}</td>
                                                    <td>${person.firstName}</td>
                                                    <td>${person.lastName}</td>
                                                    <td>${person.email}</td>
                                                    <td>${person.userName}</td>
                                                    <td>${person.password}</td>
                                                    <td>${person.personType}</td>
                                                    <td><a href='<c:url value="/editPerson/${person.id}"/>'
                                                           class="btn-left btn btn-outline-primary"
                                                           role="button">Edytuj</a>
                                                        <a href='<c:url value="/deletePerson/${person.id}"/>'
                                                           class="btn-left btn btn-outline-danger"
                                                           role="button">Usuń</a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <br>
                                        <a href='<c:url value="/addPerson"/>' class="btn btn-outline-success" role="button">Dodaj nowego</a>
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
                <%--                <%@include file="../../partials/_footer.jspf" %>--%>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->

    <!-- plugins:js -->
    <script src="../../../resources/vendors/base/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="../../../resources/vendors/chart.js/Chart.min.js"></script>
    <script src="../../../resources/js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../../resources/js/off-canvas.js"></script>
    <script src="../../../resources/js/hoverable-collapse.js"></script>
    <script src="../../../resources/js/template.js"></script>
    <script src="../../../resources/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../../../resources/js/dashboard.js"></script>
    <!-- End custom js for this page-->

</body>

</html>