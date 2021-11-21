<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="product" scope="request" type="com.ute.ecwebapp.beans.Product"/>

<t:main>
  <jsp:body>
    <div class="card">
      <h4 class="card-header">
        ${product.proName}
      </h4>
      <div class="card-body">
        <img src="${pageContext.request.contextPath}/public/imgs/sp/${product.proID}/main.jpg" alt="${product.proName}" title="${product.proName}">
      <p class="card-text mt-3">
        Giá bán : <span class="text-danger font-weight-bold"></span>
        <fmt:formatNumber value="${product.price}" type="number"/>

      </p>
        <p class="card-text">
          Tồn kho: ${product.quantity}
        </p>
        <p class="card-text">
          ${product.fullDes}
        </p>
      </div>
    </div>
  </jsp:body>
</t:main>