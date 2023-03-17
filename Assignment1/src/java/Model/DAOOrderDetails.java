/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.OrderDetail;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASod
 */
public class DAOOrderDetails extends ConnectDB {

    public OrderDetail getOrderDetail(int orderID) {
        OrderDetail od = new OrderDetail();
        try {
            if (conn != null) {
                ResultSet rs = getData("select orderID, SUM(quantity), SUM(totalPrice) from OrderDetail where orderID = " + orderID + "group by orderID");
                while (rs.next()) {
                    int qty = rs.getInt(2);
                    double total = rs.getDouble(3);
                    return new OrderDetail(qty, total);
                }
                rs.close();
                conn.close();
            }
            return od;
        } catch (SQLException ex) {
            Logger.getLogger(DAOOrderDetails.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAOOrderDetails dao = new DAOOrderDetails();
        OrderDetail od = dao.getOrderDetail(1);
        System.out.println(od.toString());
    }
}
