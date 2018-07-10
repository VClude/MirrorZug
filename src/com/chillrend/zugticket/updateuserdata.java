package com.chillrend.zugticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet(name = "updateuserdata")
public class updateuserdata extends HttpServlet {
    Connection con;
    Statement stmt;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("pwd");
        String confirmPassword = request.getParameter("passwordConfirm");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender =request.getParameter("gender");
        String city = request.getParameter("city");
        String zip = request.getParameter("zip");
        String addr = request.getParameter("addr");
        String identify = request.getParameter("identify");

        PrintWriter out = response.getWriter();

        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/trendb","akar","akarpohon");
            stmt = con.createStatement();

            PreparedStatement stmts = con.prepareStatement("UPDATE user SET username=?, password=?, email=?, name=?, gender=?,"
            + " city=?, zip=?, address=?, ident=? WHERE username=?");

            stmts.setString(1, uname);
            stmts.setString(2, password);
            stmts.setString(3, email);
            stmts.setString(4, name);
            stmts.setString(5, gender);
            stmts.setString(6, city);
            stmts.setString(7, zip);
            stmts.setString(8, addr);
            stmts.setString(9, identify);
            stmts.setString(10, uname);

            int i = stmts.executeUpdate();
            if(i>0){
                response.sendRedirect("success.jsp");
            }else{
                response.sendRedirect("sign-up.jsp");
            }
        }catch (Exception E){
            E.printStackTrace();
            response.sendRedirect("sign-up.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
