/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.User;
import Model.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Tran Tuan
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");

            DAOUser dao = new DAOUser();
            String ho = request.getParameter("ho");
            String ten = request.getParameter("ten");
            String date = request.getParameter("ngaysinh");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
            String sdt = request.getParameter("sdt");
            String nam = request.getParameter("Nam");
            String nu = request.getParameter("Nu");

            String gioitinh = null;
            if (nam != null) {
                gioitinh = "nam";
            } else if (nu != null) {
                gioitinh = "nữ";
            }
            String services = "";
            services = request.getParameter("do");

            if (services.equals("dangki")) {
                User u = dao.getUser(username);
                if (ho != "" && ten != "" && date != "" && username != "" && password != "" && u == null) {
                    int n;
                    String trangthai = "đăng ký thành công";

                    String ho_mang[] = ho.trim().split(" ");

                    for (int i = 0; i < ho_mang.length; i++) {
                        if (!"".equals(ho_mang[i].trim())) {
                            ho_mang[i] = ho_mang[i].substring(0, 1).toUpperCase()
                                    + ho_mang[i].substring(1, ho_mang[i].length()).toLowerCase();
                        }
                    }
                    String ho_chuoi = "";
                    for (int i = 0; i < ho_mang.length; i++) {
                        if (!"".equals(ho_mang[i].trim())) {
                            ho_chuoi = ho_chuoi + ho_mang[i] + " ";
                        }
                    }

                    String ten_mang[] = ten.trim().split(" ");

                    for (int i = 0; i < ten_mang.length; i++) {
                        if (!"".equals(ten_mang[i].trim())) {
                            ten_mang[i] = ten_mang[i].substring(0, 1).toUpperCase()
                                    + ten_mang[i].substring(1, ten_mang[i].length()).toLowerCase();
                        }
                    }
                    String ten_chuoi = "";
                    for (int i = 0; i < ten_mang.length; i++) {
                        if (!"".equals(ten_mang[i].trim())) {
                            ten_chuoi = ten_chuoi + ten_mang[i] + " ";
                        }
                    }

                    User U = new User(username, password, ho_chuoi, ten_chuoi, date, address, gioitinh, sdt);
                    System.out.println(U);
                    n = dao.addUser(U);

                    out.println("n:" + n);
                    request.setAttribute("trangthai", trangthai);
                    request.getRequestDispatcher("DangKi.jsp").forward(request, response);
                } else {
                    String trangthai = "đăng ký  thất bại";
                    request.setAttribute("trangthai", trangthai);
                    request.getRequestDispatcher("DangKi.jsp").forward(request, response);
                }
            } else if (services.equals("capnhat")) {
                String userID_s = request.getParameter("userID");
                int userID = Integer.parseInt(userID_s);

                if (ho != "" && ten != "" && date != "" && username != "" && sdt != "" && address != "") {
                    HttpSession session = request.getSession();
                    int n;
                    String trangthai = "Cập nhật thông tin thành công";

                    String ho_mang[] = ho.trim().split(" ");

                    for (int i = 0; i < ho_mang.length; i++) {
                        if (!"".equals(ho_mang[i].trim())) {
                            ho_mang[i] = ho_mang[i].substring(0, 1).toUpperCase()
                                    + ho_mang[i].substring(1, ho_mang[i].length()).toLowerCase();
                        }
                    }
                    String ho_chuoi = "";
                    for (int i = 0; i < ho_mang.length; i++) {
                        if (!"".equals(ho_mang[i].trim())) {
                            ho_chuoi = ho_chuoi + ho_mang[i] + " ";
                        }
                    }

                    String ten_mang[] = ten.trim().split(" ");

                    for (int i = 0; i < ten_mang.length; i++) {
                        if (!"".equals(ten_mang[i].trim())) {
                            ten_mang[i] = ten_mang[i].substring(0, 1).toUpperCase()
                                    + ten_mang[i].substring(1, ten_mang[i].length()).toLowerCase();
                        }
                    }
                    String ten_chuoi = "";
                    for (int i = 0; i < ten_mang.length; i++) {
                        if (!"".equals(ten_mang[i].trim())) {
                            ten_chuoi = ten_chuoi + ten_mang[i] + " ";
                        }
                    }

                    User U = new User(userID, username, ho_chuoi, ten_chuoi, date, address, sdt);

                    n = dao.updateUser(U);

                    session.removeAttribute("hoten");
                    session.removeAttribute("u");
                    session.removeAttribute("viettat");

                    String hoten = ho_chuoi + " " + ten_chuoi;
                    String viettat = ho_chuoi.substring(0, 1) + ten_chuoi.substring(0, 1);

                    session.setAttribute("u", U);
                    session.setAttribute("hoten", hoten);
                    session.setAttribute("viettat", viettat);
                    request.setAttribute("trangthai", trangthai);
                    request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
                } else {
                    String trangthai = "Bạn cần phải điền đầy đủ thông tin tất cả các ô!";
                    request.setAttribute("trangthai", trangthai);
                    request.getRequestDispatcher("UpdateInfo.jsp").forward(request, response);
                }
            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
