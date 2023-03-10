/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Vector;

/**
 *
 * @author Tran Tuan
 */
public class DAOProduct extends ConnectDB {
    
    public Product getProduct(String productID) {
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
        Vector<Product> list1 = dao.listAllProduct("select * from Product where prodID like 'FM%'");

        for (Product product : list1) {
            System.out.println(product.getProductImg().length);
        }

//         Vector<String[]> s=new Vector<String[]>();
//        String images; 
//        for(int i=0;i<list1.size();i++) {
//            images=list1.get(i).getProductImg();
//            String img[]=images.split(",");
//            System.out.println(img[0]);
//            s.add(img);
//        }
//        for (String[] strings : s) {
//            System.out.println(Arrays.toString(strings));
//        }
    }
}
