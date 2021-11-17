<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="com.ute.ecwebapp.beans.Category" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="java.util.List" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;<jsp:useBean id ="category" scope="request" type="com.ute.ecwebapp.beans.Category"/>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<jsp:useBean id ="category" scope="request" type="com.ute.ecwebapp.beans.Category"/>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;<jsp:useBean id="category" scope="request" type="com.ute.ecwebapp.beans.Category" />&ndash;%&gt;--%>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="com.ute.ecwebapp.beans.Category" %>--%>
<%--<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<%--<jsp:useBean id="category" scope="request" type="com.ute.ecwebapp.beans.Category" />--%>

<%--<t:main>--%>
<%--  <jsp:body>--%>
<%--    <form action="" method="post">--%>
<%--    <div class="card">--%>
<%--      <h4 class="card-header">--%>
<%--          Category--%>
<%--      </h4>--%>
<%--          <div class="card-body">--%>
<%--              <div class="form-group">--%>
<%--                  <label for="txtCatID">#</label>--%>
<%--                  <input type="text" class="form-control" id="txtCatID" name="CatName" readonly value="${category.catID}">--%>
<%--              </div>--%>
<%--              <div class="form-group">--%>
<%--                <label for="txtCatName">Category</label>--%>
<%--                <input type="text" class="form-control" id="txtCatName" name="CatName" readonly value="${category.catName}">--%>
<%--              </div>--%>
<%--          </div>--%>
<%--          <div class="card-footer">--%>
<%--            <a class="btn  btn-primary" formaction="${pageContext.request.contextPath}/Admin/Category" role="button">--%>
<%--              <i class="fa fa-backward" aria-hidden="true"></i>--%>
<%--            List--%>
<%--            </a>--%>

<%--              <button type="submit" class="btn btn-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">--%>
<%--                  <i class="fa fa-trash-o" aria-hidden="true"></i>--%>
<%--                  Delete--%>
<%--              </button>--%>
<%--            <button type="submit" class="btn btn-primary " formaction="${pageContext.request.contextPath}/Admin/Category/Update">--%>
<%--            <i class="fa fa-check" aria-hidden="true"></i>--%>
<%--              Save--%>
<%--            </button>--%>
<%--          </div>--%>
<%--    </div>--%>
<%--    </form>--%>
<%--  </jsp:body>--%>
<%--</t:main>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="category" scope="request" type="com.ute.ecwebapp.beans.Category"/>

<t:main>
    <jsp:body>
        <form action="" method="post">
            <div class="card">
                <h4 class="card-header">
                    Category
                </h4>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtCatID">#</label>
                        <input type="text" class="form-control" id="txtCatID" name="CatID" readonly value="${category.catID}">
                    </div>
                    <div class="form-group">
                        <label for="txtCatName">Category</label>
                        <input type="text" class="form-control" id="txtCatName" name="CatName" autofocus value="${category.catName}">
                    </div>
                </div>
                <div class="card-footer">
                    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/Category/" role="button">
                        <i class="fa fa-backward" aria-hidden="true"></i>
                        List
                    </a>
                    <button type="submit" class="btn btn-danger" formaction="${pageContext.request.contextPath}/Admin/Category/Delete">
                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                        Delete
                    </button>
                    <button type="submit" class="btn btn-primary" formaction="${pageContext.request.contextPath}/Admin/Category/Update">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Save
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>