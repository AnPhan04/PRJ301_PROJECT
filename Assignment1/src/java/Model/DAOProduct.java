/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Vector;

/**
 *
 * @author Tran Tuan
 */
public class DAOProduct extends ConnectDB {

    public int deleteProduct(String productID) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                String sql = "DELETE FROM Product WHERE prodID = ?";
                PreparedStatement st = db.conn.prepareStatement(sql);
                st.setString(1, productID);
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

    public int addProduct(Product product) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                Statement st = db.conn.createStatement();
                String sql = "INSERT INTO Product(cateID, prodID, ProdName, prodImg, price)\n"
                        + "VALUES('" + product.getCateID() + "', '"
                        + product.getProductID() + "', '"
                        + product.getProductName() + "', '"
                        + String.join(",", product.getProductImg()) + "', "
                        + product.getPrice() + ")";
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

    public Product getProductByID(String id) {
        String sql = "select * from Product where ProdID='" + id + "'";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                String cateID = rs.getString(1);
                String productID = rs.getString(2);
                String productName = rs.getString(3);
                String productImg = rs.getString(4);
                double price = rs.getDouble(5);

                String img[] = productImg.split(",");

                Product pro = new Product(productID, productName, img, price);
                return pro;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public int updateProduct(Product product) {
        int row = 0;
        try {
            ConnectDB db = new ConnectDB();
            if (db.conn != null) {
                String sql = "UPDATE Product SET ProdName = ?, price = ? WHERE prodID = ?";
                PreparedStatement st = db.conn.prepareStatement(sql);
                st.setString(1, product.getProductName());
                st.setDouble(2, product.getPrice());
                st.setString(3, product.getProductID());
                row = st.executeUpdate();
                st.close();
            }
            db.conn.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            row = -1;
        }
        return row;
    }

    public Product getProduct(String productID) {
        try {
            ResultSet rs = getData("SELECT * FROM Product WHERE prodID = '" + productID + "'");
            while (rs.next()) {
                int cateID = rs.getInt(1);
                String productName = rs.getString(3);
                String productImg = rs.getString(4);
                double price = rs.getDouble(5);
                String img[] = productImg.split(",");
                Product product = new Product(cateID, productID, productName, img, price);
                return product;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Vector<Product> listAllProduct(String sql) {
        Vector<Product> vector = new Vector<Product>();

        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                String cateID = rs.getString(1);
                String productID = rs.getString(2);
                String productName = rs.getString(3);
                String productImg = rs.getString(4);
                double price = rs.getDouble(5);

                String img[] = productImg.split(",");

                Product pro = new Product(productID, productName, img, price);

                vector.add(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public int SoLuongSanPham(String sql) {

        int soluongsanpham = 0;

        try {

            ResultSet rs = getData(sql);
            while (rs.next()) {
                soluongsanpham = rs.getInt(1);

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return soluongsanpham;
    }

    public Vector<Product> getListByPage(Vector<Product> list, int start, int end) {
        Vector<Product> arr = new Vector<Product>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {
        DAOProduct dao = new DAOProduct();
        String img = "images/Male/MDEP/MDEPGR/1.jpg";
//        String[] imgs = {"images/Male/MDEP/MDEPGR/1.jpg"};
        String[] imgs = img.split(",");
//        Product prod = new Product(2, "MDEPcoral", "TEST", imgs, 100);
        Product prod = new Product(2, "MDEPorange", "TEST", imgs, 100);
//        Product prod = new Product(1, "testid", "prodname", 100000, img);
        System.out.println(dao.addProduct(prod));

    }
}
