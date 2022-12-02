<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<%@include file="../../partials/_headTag.jspf" %>
<body>
<div class="container-scroller">
    <div class="row p-0 m-0 proBanner" id="proBanner">
        <div class="col-md-12 p-0 m-0">
            <div class="card-body card-body-padding d-flex align-items-center justify-content-between">
                <div class="ps-lg-1">
                    <div class="d-flex align-items-center justify-content-between">
                        <p class="mb-0 font-weight-medium me-3 buy-now-text">Free 24/7 customer support, updates, and
                            more with this template!</p>
                        <a href="https://www.bootstrapdash.com/product/royalui/?utm_source=organic&utm_medium=banner&utm_campaign=buynow_demo"
                           target="_blank" class="btn me-2 buy-now-btn border-0">Get Pro</a>
                    </div>
                </div>
                <div class="d-flex align-items-center justify-content-between">
                    <a href="https://www.bootstrapdash.com/product/royalui/"><i class="ti-home me-3 text-white"></i></a>
                    <button id="bannerClose" class="btn border-0 p-0">
                        <i class="ti-close text-white me-0"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- partial:partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.jspf -->
        <%@include file="../../partials/_sidebar.jspf" %>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="display-3">Dodawanie nowego dostawcy</h4>
                                <p class="card-description">
                                    <!--  ja tym bardziej -->
                                </p>
                                <form method="post" id="add-charger"
                                      action='<c:url value="/addCharger/{id}"/>'>

                                    <div class="form-group">
                                        <label for="name">Nazwa</label>
                                        <input class="form-control" type="text" id="name" name="name" placeholder="Wpisz nazwę dostawcy...">
                                        </div>

                                    <div class="form-group">
                                        <label for="address">Adres</label>
                                        <input class="form-control" type="text" id="address" name="address" placeholder="Wpisz dane adresowe dostawcy...">
                                    </div>

                                    <div class="form-group">
                                        <label for="headquarters">Siedziba</label>
                                        <input class="form-control" type="text" id="headquarters" name="headquarters" placeholder="Wpisz adres siedziby dostawcy...">
                                    </div>

                                    <button type="submit" form="add-charger" class="btn btn-primary me-2">Zapisz
                                    </button>
                                    <a class="btn btn-light" href='<c:url value="/chargers"/>' role="button">Anuluj</a>
                                </form>
                            </div>
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

