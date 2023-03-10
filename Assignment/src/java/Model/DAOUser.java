/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tran Tuan
 */
public class DAOUser  extends ConnectDB{
    public User getUser(String user,String pass) {
        //vì nó chỉ select ra 1 đối tư
        User us=null;
        ResultSet rs=getData("Select * from [User] where UserName='"+user+"' and Password='"+pass+"'");
        try {
            while(rs.next()) {
                int UserID=rs.getInt(1);
                String UserName=rs.getString(2);
                String Password=rs.getString(3);
                String ho=rs.getString(4);
                String ten=rs.getString(5);
                String DOB=rs.getString(6);
                String Address=rs.getString(7);
                String GioiTinh=rs.getString(8);
                 String sdt=rs.getString(9);
                 String role=rs.getString(10);
                
                us=new User(UserID ,UserName, Password,ho,ten,DOB,Address,GioiTinh,sdt,role);
 
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return us;
    }
    
    public User getUser(String user) {
        //vì nó chỉ select ra 1 đối tư
        User us=null;
        ResultSet rs=getData("Select * from [User] where UserName='"+user+"'");
        try {
            while(rs.next()) {
                int UserID=rs.getInt(1);
                String UserName=rs.getString(2);
                String Password=rs.getString(3);
                String ho=rs.getString(4);
                String ten=rs.getString(5);
                String DOB=rs.getString(6);
                String Address=rs.getString(7);
                String GioiTinh=rs.getString(8);
                 String sdt=rs.getString(9);
                 String role=rs.getString(10);
                
                us=new User(UserID ,UserName, Password,ho,ten,DOB,Address,GioiTinh,sdt,role);
 
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return us;
    }
    
     public int addUser(User user) {
        int n=0;
        String sql="insert into [User](UserName,Password,Ho,ten,dob,address,gioitinh,sdt)"
                + " values(?,?,?,?,?,?,?,?)";
        try {
           PreparedStatement pre=conn.prepareStatement(sql);
           //pre.setDataType(index,value);
           pre.setString(1,user.getUserName());
           pre.setString(2,user.getPassword());
           pre.setString(3,user.getHo());
           pre.setString(4,user.getTen());
           pre.setString(5,user.getDOB());
           pre.setString(6,user.getAddress());
           pre.setString(7,user.getGioitinh());
           pre.setString(8,user.getSdt());
          
           //run
           n=pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    
    }
     
    public int updateUser(User user) {
        int n=0;
        String sqlPre="update [User] set UserName=?,ho=?,ten=?,"
                + "dob=?,address=?,sdt=?"
                + " where UserID=?";
        try {
           PreparedStatement pre=conn.prepareStatement(sqlPre);
           //pre.setDataType(index,value);
            pre.setString(1,user.getUserName());
           pre.setString(2,user.getHo());
           pre.setString(3,user.getTen());
           pre.setString(4,user.getDOB());
           pre.setString(5,user.getAddress());
           pre.setString(6,user.getSdt());
           pre.setInt(7,user.getUserId());
          
           //run
           n=pre.executeUpdate();
                
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return n;
    } 
    
    
    public static void main(String[] args) {
        DAOUser dao=new DAOUser();
//         User u=dao.getUser("huytq","huytq12345");
//         System.out.println(u);
//         User u1=new User(3,"tuanpm","Pham","Tuấn","2002-02-22","Hà Nội","12345");
//         int n=dao.updateUser(u1);
//         System.out.println("n:"+n);
//String date="Trần Quang Huy";
//               System.out.println(""+date);
            User u=dao.getUser("tuan@gmail.com");
            System.out.println("U:"+u);
              
    }
    
    
    
    
}
