/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chillrend.zugticket;

import java.sql.*;
import java.sql.SQLException;
import java.util.Map;
import java.util.LinkedHashMap;

/**
 *
 * @author X453SA
 */
public class zugProcess {
    private String selectedOption;
    
    public String getSelectedOption(){
    return this.selectedOption;
    }
    public void setSelectedOption(String selectedOption){
        this.selectedOption = selectedOption;
    }
    
    private String query;
    
    public String getQuery(){
    return this.query;
    }
    public void setQuery(String query){
        this.query = query;
    }
    
    private String identifier;
    
    public String getIdentifier(){
        return this.identifier;
    }
    public void setIdentifier(String identify){
        this.identifier = identify;
    }
    
    private Map<String, Object> selectData = new LinkedHashMap <String, Object>();
    
    public Map<String,Object> getSelectData(){
        return this.selectData;
    }
    public void setSelectValue(Map<String,Object> map){
        this.selectData = map;
    }
    
    Connection con = null;
    Statement stmt = null;
    
    public void connectDb(){
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            con = DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/trendb","akar","akarpohon");  
            stmt = con.createStatement();
            
        }catch(Exception e){
           e.printStackTrace();
        }
    }
    
    public void changeSelect(){
        connectDb();
        String query = getQuery();
        String selectedOption = getSelectedOption();
        String identifier = getIdentifier();
        try{
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT name,id FROM " + identifier + " WHERE " + query + "_id='" + selectedOption +"'");
            
            Map<String,Object> map = new LinkedHashMap<String,Object>();
            
            while(rs.next()){
                map.put(rs.getString(2), rs.getString(1));
            }
            
            setSelectValue(map);
        }catch(Exception E){
            E.printStackTrace();
        }
    }
}
