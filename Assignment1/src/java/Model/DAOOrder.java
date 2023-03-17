/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Cart;
import Entity.Item;
import Entity.Order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class DAOOrder extends ConnectDB {

    ConnectDB db = new ConnectDB();

    public Order getOrder(int orderID) {
        ResultSet rs = db.getData("SELECT orderID, userID, orderDate FROM [Order] WHERE orderID=" + orderID);
        try {
            while (rs.next()) {
                int userID = rs.getInt("userID");
                String date = rs.getString("orderDate");
                return new Order(orderID, userID, date);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public ArrayList<Order> listAllOrders() {
        ArrayList<Order> list = new ArrayList<>();
        try {
            if (db.conn != null) {
                ResultSet rs = db.getData("SELECT orderID, userID, orderDate FROM [Order]");
                while (rs.next()) {
                    int orderID = rs.getInt("orderID");
                    int userID = rs.getInt("userID");
                    String date = rs.getString("orderDate");
                    list.add(new Order(orderID, userID, date));
                }
                rs.close();
                db.conn.close();
                return list;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void addOrder(Order o, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();

        try {
            if (o.getUserID() == 0) {
                String sql = "insert into [Orders](hovaten,email,sdt,diachi,xa,huyen,tinh,orderDate"
                        + ") values(?,?,?,?,?,?,?,?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setString(1, o.getHovaten());
                st.setString(2, o.getEmail());
                st.setString(3, o.getSdt());
                st.setString(4, o.getDiachi());
                st.setString(5, o.getXa());
                st.setString(6, o.getHuyen());
                st.setString(7, o.getTinh());
                st.setString(8, date);

                st.executeUpdate();
            } else {
                String sql = "insert into [Orders](userID,hovaten,email,sdt,diachi,xa,huyen,tinh,orderDate"
                        + ") values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement st = conn.prepareStatement(sql);
                st.setInt(1, o.getUserID());
                st.setString(2, o.getHovaten());
                st.setString(3, o.getEmail());
                st.setString(4, o.getSdt());
                st.setString(5, o.getDiachi());
                st.setString(6, o.getXa());
                st.setString(7, o.getHuyen());
                st.setString(8, o.getTinh());
                st.setString(9, date);

                st.executeUpdate();
            }
            //Lấy ra id của order vừa add
            String sql1 = "select top 1 orderID from [Orders] order by orderID desc";
            PreparedStatement st1 = conn.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            if (rs.next()) {
                String oid = rs.getString(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [OrderDetail](orderID,prodID,size,price,quantity,totalPrice) "
                            + "values(?,?,?,?,?,?)";
                    PreparedStatement st2 = conn.prepareStatement(sql2);
                    st2.setString(1, oid);
                    st2.setString(2, i.getProduct().getProductID());
                    st2.setInt(3, i.getSize());
                    st2.setDouble(4, i.getPrice());
                    st2.setInt(5, i.getQuantity());
                    st2.setDouble(6, i.getPrice() * i.getQuantity());
                    st2.executeUpdate();
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
