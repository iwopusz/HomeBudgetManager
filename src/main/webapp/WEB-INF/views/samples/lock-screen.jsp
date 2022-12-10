<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="../../partials/_headTag.jspf" %>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth lock-full-bg">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-transparent text-left p-5 text-center">
              <img src="../../../resources/images/faces/face13.jpg" class="lock-profile-img" alt="img">
              <form class="pt-5">
                <div class="form-group">
                  <label for="examplePassword1">Hasło do odblokowania</label>
                  <input type="password" class="form-control text-center" id="examplePassword1" name="password" placeholder="Hasło">
                </div>
                <div class="mt-5">
                  <a class="btn btn-block btn-success btn-lg font-weight-medium" href='<c:url value="/"/>'>Odblokuj</a>
                </div>
                <div class="mt-3 text-center">
                  <a href='<c:url value="/login"/>' class="auth-link text-white">Zaloguj na inne konto</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <%@include file="../../partials/_js.jspf" %>
</body>

</html>
