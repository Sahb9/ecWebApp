<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="products" scope="request" type="java.util.List<com.ute.ecwebapp.beans.Product>"/>

<t:main>
  <jsp:body>
    <div class="card">
      <h4 class="card-header d-flex justify-content-between">
        Products
      </h4>
      <c:choose>
        <c:when test="${products.size() == 0}">
          <div class="card-body">
            <p class="card-text">Không có dữ liệu.</p>
          </div>
        </c:when>
        <c:otherwise>
          <div class="card-body">
            <div class="row">
              <c:forEach items="${products}" var="c">
                <div class="col-sm-4 mb-3">
                  <div class="card h-100">
                    <img src="${pageContext.request.contextPath}/public/imgs/sp/${c.proID}/main_thumbs.jpg" alt="${c.proName}" title="${c.proName}" class="card-img-top">

                    <div class="card-body">
                      <h6 class="card-title">${c.proName}</h6>
                      <h5 class="card-title text-danger">
                        <fmt:formatNumber value="${c.price}" type="number"/>
                      </h5>
                      <p class="card-text"> ${c.tinyDes}</p>
                    </div>
                    <div class="card-footer text-muted">
                      <a  class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Product/Detail?id=${c.proID}" role="button">
                        <i class="fa fa-eye" aria-hidden="true"></i>
                        Details
                      </a>
                      <a  class="btn btn-sm btn-outline-success" href="#" role="button">
                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                        Add to cart
                      </a>
                    </div>
                  </div>
                </div>
              </c:forEach>

            </div>
            <table class="table table-hover">
              <thead>
              <tr>
                <th>#</th>
                <th>Product</th>
                <th>Desciption</th>
                <th class="text-right">Price</th>
                <th class="text-right">Quantity</th>
                <th>&nbsp;</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${products}" var="c">
                <tr>
                  <td>${c.proID}</td>
                  <td>${c.proName}</td>
                  <td>${c.tinyDes}</td>
                  <td class="text-right">
                    <fmt:formatNumber value="${c.price}" type="number"/>
                  </td>
                  <td class="text-right">${c.quantity}</td>
                  <td class="text-right">
                    <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Product/Edit?id=${c.proID}" role="button">
                      <i class="fa fa-pencil" aria-hidden="true"></i>
                    </a>
                  </td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </jsp:body>
</t:main>