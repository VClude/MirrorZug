package com.chillrend.zugticket;

import java.util.Date;

public class railpasscontainer {

    private String passName, days, passengerName, identification, countryOrigin;
    private Date dateStart;

    public String getPassName(){
        return this.passName;
    }
    public void setPassName(String passName){
        this.passName = passName;
    }

    public String getDays(){
        return this.days;
    }
    public void setDays(String days){
        this.days = days;
    }

    public String getPassengerName(){
        return this.passengerName;
    }
    public void setPassengerName(String passengerName){
        this.passengerName = passengerName;
    }

    public String getIdentification(){
        return this.identification;
    }
    public void setIdentification(String identification){
        this.identification = identification;
    }

    public String getCountryOrigin(){
        return this.countryOrigin;
    }
    public void setCountryOrigin(String countryOrigin){
        this.countryOrigin = countryOrigin;
    }

    public Date getDateStart(){
        return this.dateStart;
    }
    public void setDateStart(Date dateStart){
        this.dateStart = dateStart;
    }

}
