package com.example.board;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class BeverageVO {
    private int seq;
    private String name;
    private String photo;
    private int price;
    private int newDrinkNum;
    private String expiration;
    private String company;
    private Date regdate;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    private MultipartFile file;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNewDrinkNum() {
        return newDrinkNum;
    }

    public void setNewDrinkNum(int newDrinkNum) {
        this.newDrinkNum = newDrinkNum;
    }

    public String getExpiration() {
        return expiration;
    }

    public void setExpiration(String expiration) {
        this.expiration = expiration;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    private String category;


    @Override
    public String toString() {
        return "BeverageVO{" +
                "seq=" + seq +
                ", name='" + name + '\'' +
                ", photo='" + photo + '\'' +
                ", price=" + price +
                ", newDrinkNum=" + newDrinkNum +
                ", expiration='" + expiration + '\'' +
                ", company='" + company + '\'' +
                ", regdate=" + regdate +
                ", file=" + file +
                ", category='" + category + '\'' +
                '}';
    }
}
