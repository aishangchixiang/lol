package com.test.model;

public class Hero {
    private int id;
    private String hname;
    private String hnick;
    private int hprice;
    private String hstory;
    private Category category;

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getHstory() {
        return hstory;
    }

    public void setHstory(String hstory) {
        this.hstory = hstory;
    }

    private String cid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHnick() {
        return hnick;
    }

    public void setHnick(String hnick) {
        this.hnick = hnick;
    }

    public int getHprice() {
        return hprice;
    }

    public void setHprice(int hprice) {
        this.hprice = hprice;
    }



    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }
}