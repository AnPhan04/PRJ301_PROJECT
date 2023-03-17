/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Item;
import Entity.OrderDetail;
import Entity.Product;
import Entity.User;
import Model.ConnectDB;
import Model.DAOProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tran Tuan
 */
@WebServlet(name = "QLDonHang_User_Servlet", urlPatterns = {"/QLDonHang_User_Servlet"})
public class QLDonHang_User_Servlet extends HttpServlet {

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
            HttpSession session = request.getSession(true);
            Vector<Item> vector = new Vector<Item>();
            DAOProduct daoPro = new DAOProduct();
            ConnectDB c = new ConnectDB();

            User u =  (User) session.getAttribute("u");
            out.println(u);
            out.println("u:"+u.getUserId());
                ResultSet rs = c.getData("select od.prodID,od.size,od.price,od.quantity,od.totalPrice from OrderDetail od,"
                        + " (select orderID from Orders where userID="+u.getUserId()+") o where od.orderID=o.orderID");
               // out.println("s:"+rs);
               // out.println("s1:"+rs.next());
                try {
                    while (rs.next()) {

                        String prodID = rs.getString(1);
                        String size = rs.getString(2);
                        double price = rs.getDouble(3);
                        int quantity = rs.getInt(4);
                        double totalPrice = rs.getDouble(5);

                        OrderDetail od = new OrderDetail(quantity, prodID, size, price, totalPrice);
                        Product pro = daoPro.getProductByID(od.getProdID());

                        Item i = new Item(pro, od.getQuantity(), Integer.parseInt(od.getSize()), od.getPrice());

                        vector.add(i);
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            if (vector.size()!=0) {
                request.setAttribute("listItem", vector);
                for (Item item : vector) {
                    out.println("I:" + item);
                }
            }else {
                String info="Bạn chưa có đơn hàng nào";
                out.println(info);
                request.setAttribute("info",info);
            }
            request.getRequestDispatcher("QLDonHang_User.jsp").forward(request, response);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet QLDonHang_User_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet QLDonHang_User_Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }    }

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
