/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Item;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.tomcat.jakartaee.bcel.Const;

/**
 *
 * @author ASUS
 */
public class DAOItem extends ConnectDB {

    public int addItem(Item item) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                Statement st = db.conn.createStatement();
                String sql = "INSERT INTO Prod_Variant(size, stock, prodID)\n"
                        + "VALUES( " + item.getSize()
                        + "," + item.getQuantity()
                        + ", '" + item.getProduct().getProductID() + "')";
                row = st.executeUpdate(sql);
                st.close();
                db.conn.close();
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            row = -1;
        }
        return row;
    }

    public int deleteItem(String productID, int size) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                String sql = "DELETE FROM Prod_Variant WHERE prodID=? AND size=?";
                PreparedStatement st = db.conn.prepareStatement(sql);
                st.setString(1, productID);
                st.setInt(2, size);
                row = st.executeUpdate();
                st.close();
            }
            db.conn.close();
        } catch (Exception e) {
            row = -1;
            System.out.println(e.getMessage());
        }
        return row;
    }

    public int updateItem(Item item) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                String sql = "UPDATE Prod_Variant SET stock = ? WHERE prodID = ? AND size = ?";
                PreparedStatement st = db.conn.prepareStatement(sql);
                st.setInt(1, item.getQuantity());
                st.setString(2, item.getProduct().getProductID());
                st.setInt(3, item.getSize());
                row = st.executeUpdate();
                st.close();
            }
            db.conn.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return row;
    }

    public Item getItem(String productID, int size) {
        DAOProduct prodDAO = new DAOProduct();
        try {
            ResultSet rs = getData("SELECT stock FROM Prod_Variant WHERE prodID = '" + productID + "' AND size = " + size);
            while (rs.next()) {
//                if you use getInt(), the index must align to the order of the column 
//                IN THE QUERY STATEMENT, not in the table
                int stock = rs.getInt(1);
                Product product = prodDAO.getProduct(productID);
                Item item = new Item(product, stock, size, product.getPrice());
                return item;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public ArrayList<Item> listAllItems() {
        ConnectDB db = new ConnectDB();
        DAOProduct dao = new DAOProduct();
        ArrayList<Item> list = new ArrayList<>();

        try {
            ResultSet rs = db.getData("select * from Prod_Variant");
            while (rs.next()) {
                int stock = rs.getInt(2);
                int size = rs.getInt(1);
                String productID = rs.getString(3);
                Product product = dao.getProduct(productID);
                Item item = new Item(product, stock, size, product.getPrice());
                list.add(item);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public static void main(String[] args) {
        DAOItem dao = new DAOItem();
        Item item = dao.getItem("MDEPBL", 43);
//        System.out.println(item.toString());
        System.out.println(dao.deleteItem("MDEPBL", 43));
    }
}
