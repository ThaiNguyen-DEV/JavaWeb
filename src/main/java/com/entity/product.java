package com.entity;

public class product {
    private int productId;
    private String productname;
    private String brand;
    private String price;
    private String classify;
    private String status;
    private String photoname;
    private String email;
 
    public product(String productname, String brand, String price, String classify, String status, String photoname, String email){
        super();
        this.productname = productname;
        this.brand = brand;
        this.price = price;
        this.classify = classify;
        this.status = status;
        this.photoname = photoname;
        this.email = email;
    }
    
    public product() {
    // Khởi tạo các thuộc tính ở đây
}


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoname() {
        return photoname;
    }

    public void setPhotoname(String photoname) {
        this.photoname = photoname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "product{" + "productId=" + productId + ", productname=" + productname + ", brand=" + brand + ", price=" + price + ", classify=" + classify + ", status=" + status + ", photoname=" + photoname + ", email=" + email + '}';
    }
    
    
    
}
