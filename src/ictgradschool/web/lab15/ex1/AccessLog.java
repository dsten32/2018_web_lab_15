package ictgradschool.web.lab15.ex1;

import java.io.Serializable;
import java.util.List;

public class AccessLog implements Serializable {
    private int id;
    private String name,desc;

    public AccessLog(int id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }
}
