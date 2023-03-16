/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Tran Tuan
 */
public class User {

    private int userId;
    private String userName, password, ho, ten, DOB, address, gioitinh, sdt, role;

    public User() {
    }

    public User(int userId, String userName, String password, String ho, String ten, String DOB, String address, String gioitinh, String sdt, String role) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.ho = ho;
        this.ten = ten;
        this.DOB = DOB;
        this.address = address;
        this.gioitinh = gioitinh;
        this.sdt = sdt;
        this.role = role;
    }

    public User(int userId, String userName, String ho, String ten, String DOB, String address, String sdt) {
        this.userId = userId;
        this.userName = userName;
        this.ho = ho;
        this.ten = ten;
        this.DOB = DOB;
        this.address = address;
        this.sdt = sdt;
    }

    public User(String userName, String password, String ho, String ten, String DOB, String address, String gioitinh, String sdt) {
        this.userName = userName;
        this.password = password;
        this.ho = ho;
        this.ten = ten;
        this.DOB = DOB;
        this.address = address;
        this.gioitinh = gioitinh;
        this.sdt = sdt;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHo() {
        return ho;
    }

    public void setHo(String ho) {
        this.ho = ho;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", password=" + password + ", ho=" + ho + ", ten=" + ten + ", DOB=" + DOB + ", address=" + address + ", gioitinh=" + gioitinh + ", sdt=" + sdt + ", role=" + role + '}';
    }

}
