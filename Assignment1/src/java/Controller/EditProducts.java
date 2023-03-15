/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Item;
import Entity.Product;
import Model.DAOItem;
import Model.DAOProduct;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "EditProducts", urlPatterns = {"/EditProducts"})
public class EditProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productID = request.getParameter("productID");
        int size = Integer.parseInt(request.getParameter("size"));

        DAOItem itemDAO = new DAOItem();
        Item item = itemDAO.getItem(productID, size);

        DAOProduct prodDAO = new DAOProduct();
        Product product = prodDAO.getProduct(productID);

        request.setAttribute("item", item);
        request.setAttribute("product", product);
        request.getRequestDispatcher("admin/EditProducts.jsp").forward(request, response);
        if (item == null) {
            response.sendRedirect("ViewProducts");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String productID = request.getParameter("productID");

//            update product (including: prodName, price)
            DAOProduct prodDao = new DAOProduct();
            int row = 0;
            String newName = request.getParameter("productName");
            double newPrice = Double.parseDouble(request.getParameter("price"));
            row = prodDao.updateProduct(new Product(productID, newName, newPrice));

//            update item (including: stock)
            Product prod = prodDao.getProduct(productID);
            DAOItem itemDao = new DAOItem();
            int row1 = 0;
            int size = Integer.parseInt(request.getParameter("size"));
            int stock = Integer.parseInt(request.getParameter("stock"));
            row1 = itemDao.updateItem(new Item(prod, stock, size));

            if (row < 1 && row1 < 1) {
                throw new Exception();
            } else {
                response.sendRedirect("ViewProducts");
            }
        } catch (Exception e) {
//            response.sendRedirect("admin/Error.jsp");
            request.setAttribute("error", "Error!");
            request.getRequestDispatcher("admin/EditProducts.jsp").forward(request, response);
        }
    }
}
