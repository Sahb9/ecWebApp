package com.ute.ecwebapp.beans;

public class Product {
    private int ProID;
    private String ProName, TinyDes, FullDes;
    private int Price, Quantity, CatID;

    public Product() {
    }

    public Product(int proID, String proName, String tinyDes, String fullDes, int price, int quantity, int catID) {
        ProID = proID;
        ProName = proName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Price = price;
        Quantity = quantity;
        CatID = catID;
    }

    public int getProID() {
        return ProID;
    }

    public String getProName() {
        return ProName;
    }

    public String getTinyDes() {
        return TinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public int getPrice() {
        return Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public int getCatID() {
        return CatID;
    }
}
