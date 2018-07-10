/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chillrend.zugticket;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author X453SA
 */
public class zugSignup extends HttpServlet {
    Connection con;
    Statement stmt;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet zugSignup</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet zugSignup at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("pwd");
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

            
            PreparedStatement stmts = con.prepareStatement("INSERT INTO user values(?,?,?,?,?,?,?,?,?,?,?)");
            
            stmts.setString(1, null);
            stmts.setString(2, uname);
            stmts.setString(3, password);
            stmts.setString(4, email);
            stmts.setString(5, "user");
            stmts.setString(6, name);
            stmts.setString(7, gender);
            stmts.setString(8, city);
            stmts.setString(9, zip);
            stmts.setString(10, addr);
            stmts.setString(11, identify);

            PreparedStatement stmt = con.prepareStatement("INSERT INTO userimage values(?,?)");

            ClassLoader cl = getClass().getClassLoader();

            File image_man = new File(cl.getResource("resource/default_man.png").getFile());
            File image_woman = new File(cl.getResource("resource/default_man.png").getFile());
//            getClass().getResource("/com/chillrend/zugticket/resource/default_woman.png").getFile()
            stmt.setString(1, uname);
            if(gender.equals("Male")){
                FileInputStream blob = new FileInputStream(image_man);
                stmt.setBinaryStream(2, blob, (int) image_man.length());
            }else if(gender.equals("Female")){
                FileInputStream blob = new FileInputStream(image_woman);
                stmt.setBinaryStream(2, blob, (int) image_woman.length());
            }else {
                FileInputStream blob = new FileInputStream(image_man);
                stmt.setBinaryStream(2, blob, (int) image_man.length());
            }
            
            int i = stmts.executeUpdate();
            int e = stmt.executeUpdate();
            String Message;
            if(i>0 && e>0){
                Message = "Hooray, You're signed up!";
                request.setAttribute("message", Message);
                getServletContext().getRequestDispatcher("/success.jsp").forward(request,response);
            }else{
                response.sendRedirect("sign-up.jsp");
            }
        }catch (Exception E){
            E.printStackTrace();
            response.sendRedirect("sign-up.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
