package com.chillrend.zugticket;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpSession;

class userTable {
    String username;
    String password;
    String email;
    String name;
    String gender;
    String city;
    String zip;
    String address;
    String identification;
}

@WebServlet(name = "verifypassword")
public class verifypassword extends HttpServlet {
    Connection con;
    Statement stmt;
    List<userTable> userTables = new LinkedList<userTable>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String uname = (String) session.getAttribute("username");
        String password = request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trendb", "akar", "akarpohon");
            stmt = con.createStatement();

            PreparedStatement ps = con.prepareStatement("SELECT username,password,role FROM user WHERE username=? AND password=?;");

            ps.setString(1, uname);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            ResultSet rs1;

            if (rs.next()) {
                rs1 = stmt.executeQuery("SELECT * FROM user WHERE username='" + uname + "';");
                while (rs1.next()) {
                    userTable list = new userTable();
                    list.username = rs1.getString("username");
                    list.password = rs1.getString("password");
                    list.name = rs1.getString("name");
                    list.email = rs1.getString("email");
                    list.address = rs1.getString("address");
                    list.gender = rs1.getString("gender");
                    list.city = rs1.getString("city");
                    list.zip = rs1.getString("zip");
                    list.identification = rs1.getString("ident");

                    userTables.add(list);

                    String json = new Gson().toJson(userTables);
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write(json);

                    userTables = new LinkedList<userTable>();
                }
            } else {
//                response.sendRedirect("profile.jsp");
            }
            userTables = new LinkedList<userTable>();
        } catch (Exception e) {

        }
    }
}
