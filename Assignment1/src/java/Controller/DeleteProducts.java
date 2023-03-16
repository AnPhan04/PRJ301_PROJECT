/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Product;
import Model.DAOItem;
import Model.DAOProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "DeleteProducts", urlPatterns = {"/DeleteProducts"})
public class DeleteProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String productID = request.getParameter("productID");
            int size = Integer.parseInt(request.getParameter("size"));
            DAOItem dao = new DAOItem();
            int row = 0;
            row = dao.deleteItem(productID, size);

            DAOProduct prodDAO = new DAOProduct();
            int row1 = prodDAO.deleteProduct(productID);

            if (row < 1 || row1 < 1) {
                response.sendRedirect("ViewProducts");
            } else {
                response.sendRedirect("ViewProducts");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
