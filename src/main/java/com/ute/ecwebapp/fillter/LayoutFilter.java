package com.ute.ecwebapp.fillter;

import com.ute.ecwebapp.beans.Category;
import com.ute.ecwebapp.models.CategoryModel;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

//cho phép người gác công giữa servlet và file jsp
@WebFilter(filterName = "LayoutFilter",value = "/*")
public class LayoutFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        List<Category> list = CategoryModel.findAll();
        request.setAttribute("categoriesWithDetails",list);
        chain.doFilter(request, response);//cho phép chuỗi lệnh chạy tiếp hay dừng
    }
}
