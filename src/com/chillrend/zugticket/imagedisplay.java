package com.chillrend.zugticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "imagedisplay")
public class imagedisplay extends HttpServlet {
    public imagedisplay(){
        super();
    }
    Connection conn = null;
    PreparedStatement prep = null;
    ResultSet rs = null;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        InputStream sImage;

        if(username == null){
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trendb","akar","akarpohon");
            prep = conn.prepareStatement("SELECT * FROM userimage WHERE username=?");
            prep.setString(1, username);
            rs = prep.executeQuery();

            if(rs.next()){
                byte[] bytearray = new byte[1048576];
                int size = 0;
                sImage = rs.getBinaryStream(2);
                response.reset();
                response.setContentType("image/jpeg");
                while((size = sImage.read(bytearray)) != -1){
                    response.getOutputStream().write(bytearray,0,size);
                }
            }
        }catch (Exception E){
            E.printStackTrace();
        }
    }
}
