/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Order;
import Entity.OrderDetail;
import Model.DAOOrder;
import Model.DAOOrderDetails;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ViewOrders", urlPatterns = {"/ViewOrders"})
public class ViewOrders extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Map<Integer, OrderDetail> prodDetails = new HashMap<>();
        
        DAOOrder dao = new DAOOrder();
        ArrayList<Order> listOrders = dao.listAllOrders();
        for (Order listOrder : listOrders) {
            DAOOrderDetails dao1 = new DAOOrderDetails();
            OrderDetail orderDetail = dao1.getOrderDetail(listOrder.getOrderID());
            prodDetails.put(listOrder.getOrderID(), orderDetail);
            
        }
        request.setAttribute("listOrders", listOrders);
        request.setAttribute("prodDetails", prodDetails);
        request.getRequestDispatcher("admin/ViewOrders.jsp").forward(request, response);
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
//        processRequest(request, response);
    }
    
}
