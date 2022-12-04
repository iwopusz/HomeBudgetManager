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
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="display-3">Użytkownik</h4>
                  <p class="card-description">
                    <!--  sumie nie wiem co ma tu być -->
                  </p>
                    <form method="post" id="user-data" action='<c:url value="/manage/users/save/${person.id}"/>'>
                    <div class="form-group">
                      <label for="firstName">Imię</label>
                      <input class="form-control" type="text"
                             id="firstName"
                             name="firstName"
                             value="${person.firstName}"
                      >
                    </div>
                    <div class="form-group">
                      <label for="lastName">Nazwisko</label>
                      <input class="form-control" type="text"
                             id="lastName"
                             name="lastName"
                             value="${person.lastName}"
                      >
                    </div>
                      <div class="form-group">
                        <label for="lastName">Email</label>
                        <input class="form-control" type="email"
                               id="email"
                               name="email"
                               value="${person.email}"
                        >
                      </div>
                      <div class="form-group">
                        <label for="lastName">Pasword</label>
                        <input class="form-control" type="password"
                               id="password"
                               name="password"
                               value="${person.password}"
                        >
                      </div>
                    <button type="submit" form="user-data" class="btn btn-primary me-2">Zapisz</button>
                    <button class="btn btn-light">Anuluj</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.jspf -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © <a href="https://www.PorozmawiajZBartkiem.pl/" target="_blank">PorozmawiajZBartkiem.pl </a>2021</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Only the best <a href="https://www.PorozmawiajZBartkiem.pl/" target="_blank"> PorozmawiajZBartkiem.pl </a> templates</span>
          </div>
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

