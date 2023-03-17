/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author ASUS
 */
public class Order {
    private int orderID,userID;
    private String hovaten,email,sdt,diachi,xa,huyen,tinh,orderDate;

    public Order() {
    }

    public Order(int orderID, int userID, String hovaten, String email, String sdt, String diachi, String xa, String huyen, String tinh, String orderDate) {
        this.orderID = orderID;
        this.userID = userID;
        this.hovaten = hovaten;
        this.email = email;
        this.sdt = sdt;
        this.diachi = diachi;
        this.xa = xa;
        this.huyen = huyen;
        this.tinh = tinh;
        this.orderDate = orderDate;
    }

    public Order(int userID, String hovaten, String email, String sdt, String diachi, String xa, String huyen, String tinh) {
        this.userID = userID;
        this.hovaten = hovaten;
        this.email = email;
        this.sdt = sdt;
        this.diachi = diachi;
        this.xa = xa;
        this.huyen = huyen;
        this.tinh = tinh;
    }

    public Order(String hovaten, String email, String sdt, String diachi, String xa, String huyen, String tinh) {
        this.hovaten = hovaten;
        this.email = email;
        this.sdt = sdt;
        this.diachi = diachi;
        this.xa = xa;
        this.huyen = huyen;
        this.tinh = tinh;
    }

    public Order(int orderID, int userID, String orderDate) {
        this.orderID = orderID;
        this.userID = userID;
        this.orderDate = orderDate;
    }
    
    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getHovaten() {
        return hovaten;
    }

    public void setHovaten(String hovaten) {
        this.hovaten = hovaten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getXa() {
        return xa;
    }

    public void setXa(String xa) {
        this.xa = xa;
    }

    public String getHuyen() {
        return huyen;
    }

    public void setHuyen(String huyen) {
        this.huyen = huyen;
    }

    public String getTinh() {
        return tinh;
    }

    public void setTinh(String tinh) {
        this.tinh = tinh;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", userID=" + userID + ", hovaten=" + hovaten + ", email=" + email + ", sdt=" + sdt + ", diachi=" + diachi + ", xa=" + xa + ", huyen=" + huyen + ", tinh=" + tinh + ", orderDate=" + orderDate + '}';
    }
}
