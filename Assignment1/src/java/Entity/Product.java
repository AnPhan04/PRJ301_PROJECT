/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Tran Tuan
 */
public class Product {

    int cateID;
    String productID, productName;
    String[] productImg;
    double price;
    int size;

    public Product() {
    }

    public Product(int cateID, String productID, String productName, double price) {
        this.cateID = cateID;
        this.productID = productID;
        this.productName = productName;
        this.price = price;
    }

    public Product(String productID, String productName, double price) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
    }

    public Product(int cateID, String productID, String productName, String[] productImg, double price) {
        this.cateID = cateID;
        this.productID = productID;
        this.productName = productName;
        this.productImg = productImg;
        this.price = price;
    }

    public Product(int cateID, String productID, String productName, String[] productImg, double price, int size) {
        this.cateID = cateID;
        this.productID = productID;
        this.productName = productName;
        this.productImg = productImg;
        this.price = price;
        this.size = size;
    }

    public Product(String productID, String productName, String[] productImg, double price) {
        this.productID = productID;
        this.productName = productName;
        this.productImg = productImg;
        this.price = price;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String[] getProductImg() {
        return productImg;
    }

    public void setProductImg(String[] productImg) {
        this.productImg = productImg;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Product{" + "cateID=" + cateID + ", productID=" + productID + ", productName=" + productName + ", price=" + price + ", size=" + size + '}';
    }
}
