/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import java.sql.ResultSet;

/**
 *
 * @author ASUS
 */
public class DAOCategory extends ConnectDB{
    public Category getCategory(int cateID) {
        try {
            ResultSet rs = getData("SELECT cateName FROM Category WHERE cateID = " + cateID);
            while (rs.next()) {
                String cateName = rs.getString(1);
                return new Category(cateID, cateName);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAOCategory dao = new DAOCategory();
        System.out.println(dao.getCategory(1).toString());
    }
}
