<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<%@include file="../../partials/_headTag.jspf" %>

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

                        <div class="col-12 grid-margin">
                            <div class="card">
                                <form method="post" action='<c:url value="/add-income" />'>

                                    <div class="card-body">
                                        <h4 class="card-title" style="font-size: 20px">Dodaj wpływ</h4>
                                        <p class="card-description" style="font-size: 16px">
                                            Podaj szczegóły:
                                        </p>
                                        <div class="row">
                                            <div class="col-md-9">
                                                <div class="form-group row">
                                                    <label class="col-sm-1 col-form-label">Wybierz:</label>
                                                    <div class="col-sm-3">
                                                        <select class="form-control form-control-sm mt-2" name="household.id">
                                                            <option hidden>Gospodarstwo</option>
                                                            <c:forEach items="${households}" var="house">
                                                                <option value="${house.id}">${house.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <select class="form-control form-control-sm mt-2" name="person.id">
                                                            <option hidden>Wpłacił(a)</option>
                                                            <c:forEach items="${people}" var="person">
                                                                <option value="${person.id}">${person.firstName} ${person.lastName}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-1 col-form-label">Kwota:</label>
                                                    <div class="col-sm-2">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend-sm mt-2">
                                                                <div class="input-group-text-sm mt-">PLN</div>
                                                            </div>
                                                            <input type="number" class="form-control form-control-sm mt-2" step=".01" placeholder="0,00" name="amount"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group row">
                                                            <div class="col-sm-3"></div>
                                                            <label class="col-sm-2 col-form-label">Data:</label>
                                                            <div class="col-sm-7">
                                                                <input type="date" onfocus="this.showPicker()" class="form-control form-control-sm mt-2" name="transactionDate"
                                                                       max="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-1 col-form-label">Nazwa:</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control form-control-sm mt-2" placeholder="Nazwa wpływu" name="name" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-1 col-form-label">Źródło:</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control form-control-sm mt-2" placeholder="Źródło wpływu" name="description"/>
                                                    </div>
                                                </div>
                                                <%--<div class="form-check">--%>
<%--                                                    <label class="col-sm-2 form-check-label">--%>
<%--                                                        <input type="checkbox" class="form-check-input" unchecked name="">--%>
<%--                                                        Stały wpływ?--%>
<%--                                                    </label>--%>
<%--                                                </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <input type="submit" class="btn btn-success col-sm-1" style="margin: 10px" value="Zapisz">
                                        <input type="hidden"
                                               name="${_csrf.parameterName}"
                                               value="${_csrf.token}"/>
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
    <%@include file="../../partials/_js.jspf"%>
</body></html>
