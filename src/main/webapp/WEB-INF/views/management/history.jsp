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
        <!-- partial:../../partials/_sidebar.jsp -->
        <%@include file="../../partials/_sidebar.jsp" %>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="display-4">Historia transakcji</h4>
                                <br>
                                <a class="card-description nav-link" data-bs-toggle="collapse" href="#history-filtering"
                                   aria-expanded="false" aria-controls="history-filtering">
                                    Filtrowanie <i class="ti-angle-down" style="font-size: 11px"></i>
                                </a>
                                <div class="collapse" id="history-filtering">
                                    <div class="card col-">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-group row">
                                                        <label class="form-label">Gospodarstwa</label>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <button class="btn btn-md btn-outline-light dropdown-toggle"
                                                                    type="button" data-bs-toggle="dropdown"
                                                                    aria-haspopup="true" aria-expanded="false">Wybierz
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <!--                                                lista -->
                                                                <c:forEach var="household" items="${households}">
                                                                <label class="form-check-label dropdown-item"><input
                                                                        type="checkbox" name="households" value="${household}" class="form-check-input"/> ${household.name}</label>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-group row">
                                                        <label class="form-label">Użytkownicy</label>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <button class="btn btn-md btn-outline-light dropdown-toggle"
                                                                    type="button" data-bs-toggle="dropdown"
                                                                    aria-haspopup="true" aria-expanded="false">Wybierz
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <!--                                                lista -->
                                                                <c:forEach var="person" items="${people}">
                                                                    <label class="form-check-label dropdown-item"><input
                                                                            type="checkbox" name="people" value="${person}" class="form-check-input"
                                                                            /> ${person.firstName} ${person.lastName}</label>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-group row">
                                                        <label class="form-label">Charger</label>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <button class="btn btn-md btn-outline-light dropdown-toggle"
                                                                    type="button" data-bs-toggle="dropdown"
                                                                    aria-haspopup="true" aria-expanded="false">Wybierz
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <!--                                                lista -->
                                                                <c:forEach var="charger" items="${chargers}">
                                                                    <label class="form-check-label dropdown-item"><input
                                                                            type="checkbox" name="chargers" value="${charger}" class="form-check-input"
                                                                            /> ${charger.name}</label>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="form-group row">
                                                        <label class="form-label">Data od</label>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-10">
                                                            <input type="date" onfocus="this.showPicker()"
                                                                   class="form-control form-control-sm mt-1"
                                                                   value="2022-02-01"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="form-group row">
                                                        <label class="form-label">Data do</label>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-10">
                                                            <input type="date" onfocus="this.showPicker()"
                                                                   class="form-control form-control-sm mt-1"
                                                                   value="2022-02-01"/>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-sm-1">
                                                    <form method="post" action='<c:url value="" />'>
                                                    <input type="text" class="form-control form-control-sm mt-2" placeholder="text" name="desc" />
                                                    <input type="submit" class="btn btn-secondary btn-rounded btn-fw "
                                                           value="Zapisz">
                                                    </form>
                                                </div>
                                                <div class="col-sm-7">
                                                </div>
                                                <div class="col-sm-2">
                                                    <a class="nav-link col-sm-6 mt-2"
                                                       style="color: red; font-size: 14px; margin-left: 80px"
                                                       href="#"><i class="ti-close" style="font-size: 11px"></i> Usuń
                                                        filtry</a>
                                                </div>
                                            </div>
                                            <div class="row">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card" style="margin-top: 20px">
                                    <div class="card-body">


                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th style="font-size: medium; width: 10%">Data</th>
                                                    <th style="font-size: medium; width: 25%">Szczegóły</th>
                                                    <th style="font-size: medium; width: 10%"></th>
                                                    <th style="font-size: medium; width: 12%">Kwota</th>
                                                    <th style="font-size: medium; width: 15%">Gospodarstwo</th>
                                                    <th style="font-size: medium; width: 15%">Użytkownik</th>
                                                    <th style="font-size: medium; width: 13%">Saldo po transakcji</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${history}" var="transaction">
                                                    <tr>
                                                        <td><fmt:formatDate pattern="yyyy-MM-dd"
                                                                            value="${transaction.transactionDate}"/></td>
                                                        <td>${transaction.description}</td>
                                                        <c:if test="${transaction.transactionType == 'KOSZT'}">
                                                            <td>
                                                                <strong><i
                                                                        class="ti-export" style="font-size: 11px"></i>&nbsp;&nbsp;${transaction.charger.name}
                                                                </strong>
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${transaction.transactionType == 'DOCHOD'}">
                                                            <td>
                                                                <strong class="text-success"
                                                                        style="text-transform: uppercase"><i
                                                                        class="ti-import" style="font-size: 11px"></i>&nbsp;&nbsp;przychód</strong>
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${transaction.transactionType == 'KOSZT'}">
                                                            <td class="text-danger">
                                                                <strong>- ${transaction.amount} zł</strong></td>
                                                        </c:if>
                                                        <c:if test="${transaction.transactionType == 'DOCHOD'}">
                                                            <td class="text-success">
                                                                <strong>+ ${transaction.amount} zł</strong></td>
                                                        </c:if>
                                                        <td>${transaction.household.name}</td>
                                                        <td>${transaction.person.firstName} ${transaction.person.lastName}</td>
                                                        <c:if test="${transaction.transactionType == 'KOSZT'}">
                                                            <td><i class="ti-arrow-down"></i> after
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${transaction.transactionType == 'DOCHOD'}">
                                                            <td><i class="ti-arrow-up"></i> after</td>
                                                        </c:if>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                            <nav aria-label="">
                                                <ul class="pagination">
                                                    <c:choose>
                                                        <c:when test="${historyPage.first}">
                                                            <li class="page-item disabled"><a class="page-link" href="#"><i
                                                                    class="ti-angle-double-left"
                                                                    style="font-size: 11px"></i></a>
                                                            </li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li class="page-item"><a class="page-link" href='<c:url value="?page=${historyPage.number - 1}" />'><i
                                                                    class="ti-angle-double-left"
                                                                    style="font-size: 11px"></i></a>
                                                            </li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <c:forEach begin="0" end="${historyPage.totalPages - 1}" step="1"
                                                               varStatus="loop">
                                                        <c:choose>
                                                            <c:when test="${historyPage.number == loop.count - 1}">
                                                                <li class="page-item active"><a class="page-link"
                                                                                                href='<c:url value="?page=${loop.count - 1}" />'>${loop.count}</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class="page-item"><a class="page-link"
                                                                                         href='<c:url value="?page=${loop.count - 1}" />'>${loop.count}</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                    <c:choose>
                                                        <c:when test="${historyPage.last}">
                                                            <li class="page-item disabled"><a class="page-link" href="#"><i
                                                                    class="ti-angle-double-right"
                                                                    style="font-size: 11px"></i></a></li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li class="page-item"><a class="page-link" href='<c:url value="?page=${historyPage.number + 1}" />'><i
                                                                    class="ti-angle-double-right"
                                                                    style="font-size: 11px"></i></a></li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <input type="hidden"
                                                           name="${_csrf.parameterName}"
                                                           value="${_csrf.token}"/>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
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
<%@include file="../../partials/_js.jspf" %>
</body>

</html>
