package com.codeup.adlister.models;
import java.sql.Timestamp;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private double price;
    private String item_condition;
    private String category;
    private String location;
    private Timestamp created_at;
    private String description;

    public Ad() {
    }

    public Ad(long id, long userId, String title, double price, String item_condition,  String category,String description, String location) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.price = price;
        this.item_condition = item_condition;
        this.category = category;
        this.location = location;
        this.description = description;
    }

    public Ad(long userId, String title, double price, String item_condition, String category, String description, String location) {
        this.userId = userId;
        this.title = title;
        this.price = price;
        this.item_condition = item_condition;
        this.category = category;
        this.location = location;
        this.description = description;
    }


    public String getItem_condition() {
        return item_condition;
    }

    public void setItem_condition(String item_condition) {
        this.item_condition = item_condition;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
