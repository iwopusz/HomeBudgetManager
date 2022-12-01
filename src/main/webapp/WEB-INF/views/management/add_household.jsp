<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<<%@include file="../../partials/_headTag.jspf" %>>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.jspf -->
      <%@include file="../../partials/_sidebar.jspf" %>
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="display-3">Gospodarstwo</h4>
                  <p class="card-description">
                    <!--  sumie nie wiem co ma tu być -->
                  </p>
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Nazwa</label>
                      <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Username">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Adres</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Miasto</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="card-body">
                    <p class="display-4">Lista mieszkańców</p>
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>Imię</th>
                          <th>Nazwisko</th>
                          <th> </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Jan</td>
                          <td>Kowalski</td>
                          <td><button type="submit" class="btn btn-primary me-2">+</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary me-2">Zapisz</button>
                <button class="btn btn-light">Anuluj</button>
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
  <%@include file="../../partials/_js.jspf"%>
</body>

</html>
