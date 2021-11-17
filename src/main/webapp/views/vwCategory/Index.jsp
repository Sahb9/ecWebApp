<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<%--<jsp:useBean id ="category" scope="request" type="com.ute.ecwebapp.beans.Category"/>--%>
<jsp:useBean id ="categories" scope="request" type="java.util.List<com.ute.ecwebapp.beans.Category>"/>


<t:main>
  <jsp:body>

      <div class="card">
        <h4 class="card-header d-flex justify-content-between">
           Categories
          <a  class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/Category/Add" role="button">
            <i class="fa fa-plus" aria-hidden="true"></i>
            Add Category
          </a>
        </h4>
        <c:choose>
          <c:when test="${categories.size() == 0}">
            <div class="card-body">
              <p class="card-text">Không có dữ liệu.</p>
            </div>
          </c:when>
          <c:otherwise>
            <div class="card-body">
              <table class="table table-hover">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Category</th>
                  <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categories}" var="c">
                  <tr>
                    <td>${c.catID}</td>
                    <td>${c.catName}</td>
                    <td class="text-right">
                      <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}" role="button">
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