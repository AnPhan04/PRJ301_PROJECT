/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author ASUS
 */
public class OrderDetail {

    private int orderDtID,orderID,quantity;
    private String prodID,size;
    private double price,totalPrice;

    public OrderDetail() {
    }

    public OrderDetail(int quantity, double totalPrice) {
        this.quantity = quantity;
        this.totalPrice = totalPrice;
    }

    public OrderDetail(int quantity, String prodID, String size, double price, double totalPrice) {
        this.quantity = quantity;
        this.prodID = prodID;
        this.size = size;
        this.price = price;
        this.totalPrice = totalPrice;
    }
    
    public OrderDetail(int orderDtID, int orderID, int quantity, String prodID, String size, double price, double totalPrice) {
        this.orderDtID = orderDtID;
        this.orderID = orderID;
        this.quantity = quantity;
        this.prodID = prodID;
        this.size = size;
        this.price = price;
        this.totalPrice = totalPrice;
    }

    public int getOrderDtID() {
        return orderDtID;
    }

    public void setOrderDtID(int orderDtID) {
        this.orderDtID = orderDtID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getProdID() {
        return prodID;
    }

    public void setProdID(String prodID) {
        this.prodID = prodID;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "orderDtID=" + orderDtID + ", orderID=" + orderID + ", quantity=" + quantity + ", prodID=" + prodID + ", size=" + size + ", price=" + price + ", totalPrice=" + totalPrice + '}';
    }
}
