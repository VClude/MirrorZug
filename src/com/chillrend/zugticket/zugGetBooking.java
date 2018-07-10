package com.chillrend.zugticket;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Date;
import java.util.*;

import java.sql.SQLException;


@WebServlet(name = "zugGetBooking")
class booking{
    String booking_id;
    String train_name;
    String departure_station;
    String arrival_station;
    Date departure_date;
    Time departure_time;
}
public class zugGetBooking extends HttpServlet {
    Connection con;
    Statement stmt;
    List<booking> bookingTable = new LinkedList<booking>();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trendb","akar","akarpohon");
            stmt = con.createStatement();

            String uname = (String) session.getAttribute("username");

            ResultSet rs = stmt.executeQuery("SELECT user_id FROM user WHERE username='" + uname +"';");
            rs.next();
            String userid = rs.getString(1);

            ArrayList<String> booking_id = new ArrayList<>();
            ArrayList<String> schedule = new ArrayList<>();
            ArrayList<String> seat = new ArrayList<>();
            ArrayList<Time> issued = new ArrayList<>();
            rs = stmt.executeQuery("SELECT * FROM invoice WHERE user_id =" + userid +";");
            while(rs.next()) {
                booking_id.add(rs.getString(1));
                schedule.add(rs.getString(2));
                seat.add(rs.getString(4));
                issued.add(rs.getTime(5));
            }

            int booking_id_count = booking_id.size();
            ArrayList<String> train_id = new ArrayList<>();
            ArrayList<String> departure_station_id = new ArrayList<>();
            ArrayList<String> arrival_station_id = new ArrayList<>();
            ArrayList<Date> departure_date = new ArrayList<>();
            ArrayList<Time> departure_time = new ArrayList<>();
            for (int i=0;i < booking_id_count; i++){
                rs = stmt.executeQuery("SELECT * FROM ticket WHERE tkt_id = " + schedule.get(i) +" ;");
                while(rs.next()) {
                    train_id.add(rs.getString(2));
                    departure_station_id.add(rs.getString(3));
                    arrival_station_id.add(rs.getString(4));
                    departure_date.add(rs.getDate(6));
                    departure_time.add(rs.getTime(8));
                }
                rs.close();
            }

            int train_id_count = train_id.size();
            ArrayList<String> train_name = new ArrayList<>();
            for(int e=0; e < train_id_count; e++){
                rs = stmt.executeQuery("SELECT name FROM series WHERE id =" + train_id.get(e) +";");
                while(rs.next()){
                    train_name.add(rs.getString(1));
                }
                rs.close();
            }

            int st_count = departure_station_id.size();
            ArrayList<String> departure_station_name = new ArrayList<>();
            for(int a=0;a < st_count;a++) {
                rs = stmt.executeQuery("SELECT name FROM station WHERE id=" + departure_station_id.get(a) + ";");
                while(rs.next()){
                    departure_station_name.add(rs.getString(1));
                }
                rs.close();
            }
            ArrayList<String> arrival_station_name = new ArrayList<>();
            for(int u=0;u < st_count;u++){
                rs = stmt.executeQuery("SELECT name FROM station WHERE id=" + arrival_station_id.get(u) +";");
                while(rs.next()){
                    arrival_station_name.add(rs.getString(1));
                }
                rs.close();
            }

            for(int count=0;count<st_count;count++){
                booking book = new booking();
                book.booking_id = booking_id.get(count);
                book.train_name = train_name.get(count);
                book.departure_station = departure_station_name.get(count);
                book.arrival_station = arrival_station_name.get(count);
                book.departure_date = departure_date.get(count);
                book.departure_time = departure_time.get(count);

                bookingTable.add(book);
            }
            PrintWriter out = response.getWriter();
            String json = new Gson().toJson(bookingTable);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(json);
            out.flush();
            bookingTable = new LinkedList<booking>();
        }catch (Exception E){
            E.printStackTrace();
        }
    }
}
