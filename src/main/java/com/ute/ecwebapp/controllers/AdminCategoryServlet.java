package com.ute.ecwebapp.controllers;

import com.ute.ecwebapp.beans.Category;
import com.ute.ecwebapp.models.CategoryModel;
import com.ute.ecwebapp.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCategory Servlet", value = "/Admin/Category/*")
public class AdminCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":

                List<Category> list = CategoryModel.findAll();
                request.setAttribute("categories", list);
                ServletUtils.forward("/views/vwCategory/Index.jsp", request, response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwCategory/Add.jsp", request, response);
                break;
            case "/Edit":
                int id = 0;
                try {
                    id = Integer.parseInt(request.getParameter("id"));
                } catch (NumberFormatException e) {

                }
                Category c = CategoryModel.findById(id);
                if (c != null) {
                    request.setAttribute("category", c);
                    ServletUtils.forward("/views/vwCategory/Edit.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Admin/Category", request, response);
                }
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {

            case "/Add":
                addCategory(request, response);
                break;
            case "/Delete":
                deleteCategory(request, response);
                break;
            case "/Update":
                updateCategory(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("CatName");//lấy
        Category c = new Category(name);//Đổ
        CategoryModel.add(c);//Thêm
        ServletUtils.forward("/views/vwCategory/Add.jsp", request, response);
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        String name = request.getParameter("CatName");//lấy
        Category c = new Category(id, name);//Đổ
        CategoryModel.update(c);//update
        ServletUtils.redirect("/Admin/Category", request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        CategoryModel.delete(id);
        ServletUtils.redirect("/Admin/Category", request, response);
    }
}
