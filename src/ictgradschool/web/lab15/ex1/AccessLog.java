package ictgradschool.web.lab15.ex1;

import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.List;

public class AccessLog implements Serializable {
    private int id;
    private String name,desc;
    private Timestamp timeStamp;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setTimeStamp(Timestamp timeStamp) {
        this.timeStamp = timeStamp;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDesc() {
        return desc;
    }

    public Time getTimeStamp() {
        return timeStamp;
    }


    public AccessLog() {
    }


}
