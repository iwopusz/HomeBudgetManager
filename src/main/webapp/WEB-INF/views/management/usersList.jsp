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
      <!-- partial:partials/_sidebar.jspf -->
      <%@include file="../../partials/_sidebar.jspf" %>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Striped Table</h4>
                  <p class="card-description">
                    Add class <code>.table-striped</code>
                  </p>
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                      <tr>
                        <th>
                          Miniaturka
                        </th>
                        <th>
                          Imię i Nazwisko
                        </th>
                        <th>
                          Email
                        </th>
                        <th>
                          Akcje
                        </th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${users}" var="person">
                      <tr>
                        <td class="py-1">
                          <img src="../../../resources/images/faces/face1.jpg" alt="image"/>
                        </td>
                        <td>
                          ${person.firstName} ${person.lastName}
                        </td>
                        <td>
                          ${person.email}
                        </td>
                        <td>
                          USUN EDYTUJ
                        </td>
                      </tr>
                      </c:forEach>
                      </tbody>
                    </table>
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

