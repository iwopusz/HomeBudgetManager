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
                    <div class="col-lg-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Hoverable Table</h4>
                                <p class="card-description">
                                    Add class <code>.table-hover</code>
                                </p>
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>User</th>
                                            <th>Product</th>
                                            <th>Sale</th>
                                            <th>Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Jacob</td>
                                            <td>Photoshop</td>
                                            <td class="text-danger"> 28.76% <i class="ti-arrow-down"></i></td>
                                            <td><label class="badge badge-danger">Pending</label></td>
                                        </tr>
                                        <tr>
                                            <td>Messsy</td>
                                            <td>Flash</td>
                                            <td class="text-danger"> 21.06% <i class="ti-arrow-down"></i></td>
                                            <td><label class="badge badge-warning">In progress</label></td>
                                        </tr>
                                        <tr>
                                            <td>John</td>
                                            <td>Premier</td>
                                            <td class="text-danger"> 35.00% <i class="ti-arrow-down"></i></td>
                                            <td><label class="badge badge-info">Fixed</label></td>
                                        </tr>
                                        <tr>
                                            <td>Peter</td>
                                            <td>After effects</td>
                                            <td class="text-success"> 82.00% <i class="ti-arrow-up"></i></td>
                                            <td><label class="badge badge-success">Completed</label></td>
                                        </tr>
                                        <tr>
                                            <td>Dave</td>
                                            <td>53275535</td>
                                            <td class="text-success"> 98.05% <i class="ti-arrow-up"></i></td>
                                            <td><label class="badge badge-warning">In progress</label></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                                User
                                            </th>
                                            <th>
                                                First name
                                            </th>
                                            <th>
                                                Progress
                                            </th>
                                            <th>
                                                Amount
                                            </th>
                                            <th>
                                                Deadline
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%--                      <c:if test="${!transactions.hasContent()}">--%>
                                        <%--                        <tr>--%>
                                        <%--                          <td>No data</td>--%>
                                        <%--                        </tr>--%>
                                        <%--                      </c:if>--%>
                                        <c:forEach items="${history}" var="transaction">
                                            <tr>
                                                <td class="py-1">
                                                    <img src="../../../images/faces/face1.jpg" alt="image"/>
                                                </td>
                                                <td>
                                                        ${transaction.name}
                                                </td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                             style="width: 25%" aria-valuenow="25" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                        ${transaction.amount}
                                                </td>
                                                <td>
                                                    <fmt:formatDate pattern="yyyy-MM-dd"
                                                                    value="${transaction.transactionDate}"/>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                            <c:forEach begin="0" end="${historyPage.totalPages - 1}" step="1"
                                                       varStatus="loop">
                                                <li class="page-item"><a class="page-link"
                                                                         href='<c:url value="?page=${loop.count - 1}" />'>${loop.count}</a>
                                                </li>
                                            </c:forEach>
                                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                        </ul>
                                    </nav>
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
