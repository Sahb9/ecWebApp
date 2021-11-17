package com.ute.ecwebapp.utils;

import org.sql2o.Connection;
import org.sql2o.Sql2o;

public class DbUtils {
    //Chỗ để kết nối
    static Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/qlbh", "root", "");
    public static Connection getConnection()
    {
        return sql2o.open() ;
    }
}
