package com.ute.ecwebapp.models;

import com.ute.ecwebapp.beans.Category;
import com.ute.ecwebapp.utils.DbUtils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;


public class CategoryModel {
//    public static List<Category> findAll()
//    {
//        return new ArrayList(Arrays.asList(
//                new Category(1, "Sách"),
//                new Category(2, "Quần áo"),
//                new Category(3, "Điện thoại"),
//                new Category(4, "Laptop"),
//                new Category(5, "Loa")));
//
//    }
    public static List<Category> findAll() {

        final String query = "select * from categories ";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query)
                    .executeAndFetch(Category.class);
        }
    }
    public static Category findById(int id) {

        final String query = "select * from categories where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            List <Category> list =  con.createQuery(query).
                    addParameter("CatID",id)
                    .executeAndFetch(Category.class);
            if(list.size()==0)
                return null;
            else
                return list.get(0);
        }
    }
    public static void add(Category c)
    {
        String insertSql =
                "insert into categories(CatName) " +
                        "values (:CatName)";

        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertSql)
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }


    }
    public static void update(Category c)
    {
        String sql = "update categories(CatName) set CatName = :CatName where CatID =:CatID";


        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }


    }
    public static void delete(int id)
    {
        String sql = "delete from categories(CatName) where CatID =:CatID";


        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }


    }
}
