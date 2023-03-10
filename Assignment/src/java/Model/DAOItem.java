/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Item;
//import Entity.Product;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class DAOItem extends ConnectDB {

    public ArrayList<Item> getAllItems(String sql) {
        ArrayList<Item> listItems = new ArrayList<>();
        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                String productID = rs.getString(1);
                int size;
                int quantity;
                double price;
            }
        } catch (Exception e) {
            System.out.println("Connect DB failed!");
        }
        return listItems;
    }
}
