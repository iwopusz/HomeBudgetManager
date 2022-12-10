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
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="../../../resources/images/logo.svg" alt="logo">
              </div>
              <h4>Cześć! Zaczynajmy!</h4>
              <h6 class="font-weight-light">Zaloguj się, aby kontynuować</h6>
              <form class="pt-3" id="loginForm" method="post" action='<c:url value="/login"/>'>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleLogin" name="username" placeholder="Login">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" name="password" placeholder="Hasło">
                    <input type="hidden"
                           name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>
                </div>
                <div class="mt-3">
                  <button type="submit" form="loginForm" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Zaloguj</button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
<%--                    <label class="form-check-label text-muted">--%>
<%--                      <input type="checkbox" class="form-check-input">--%>
<%--                      Zapamiętaj mnie--%>
<%--                    </label>--%>
<%--                  </div>--%>
<%--                  <a href="#" class="auth-link text-black">Zapomniałeś hasła?</a>--%>
<%--                </div>--%>
                <div class="text-center mt-4 font-weight-light">
                  Nie masz konta? <a href='<c:url value="/register"/>' class="text-primary">Utwórz</a>
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
