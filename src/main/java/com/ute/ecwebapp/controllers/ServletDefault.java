package com.ute.ecwebapp.controllers;

import com.ute.ecwebapp.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDefault", value = "/")//bắt toàn bộ đường dẫn
public class ServletDefault extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtils.forward("/views/404.jsp",request,response);
    }
    //Như là submit,post
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtils.forward("/views/404.jsp",request,response);

    }
}
