package com.chillrend.zugticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;

@WebServlet(name = "imageupload")
@MultipartConfig(maxFileSize = 101772215)
public class imageupload extends HttpServlet {

    public imageupload(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession Session = request.getSession();
        String username = (String) Session.getAttribute("username");
        InputStream imageinput = null;

        Part filePart = request.getPart("img-input");

        if(filePart != null){
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            imageinput = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;


        try{
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trendb","akar","akarpohon");

            String sql = "UPDATE userimage SET image=? WHERE username=?";
            PreparedStatement prep = conn.prepareStatement(sql);
            prep.setString(2,username);

            if(imageinput != null){
                prep.setBlob(1, imageinput);
            }

            int row = prep.executeUpdate();

            if (row>0){
                message = "Image Uploaded!";
            }

        }catch(SQLException E){
            message = "Error :" + E.getMessage();
            E.printStackTrace();
        }finally{
            if (conn != null){
                try{
                    conn.close();
                }catch (SQLException ex){
                    ex.printStackTrace();
                }
            }
            request.setAttribute("message", message);
            String nextResponse = "/success.jsp";
            getServletContext().getRequestDispatcher(nextResponse).forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
