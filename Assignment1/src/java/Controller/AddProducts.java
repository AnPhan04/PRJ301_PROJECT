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
@WebServlet(name = "AddProducts", urlPatterns = {"/AddProducts"})
public class AddProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("admin/AddProducts.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // add product
        DAOProduct prodDao = new DAOProduct();
        String productID = request.getParameter("productID");
        int cateID = Integer.parseInt(request.getParameter("category"));
        String name = (String) request.getParameter("name");
        String img = request.getParameter("image");
        String[] imgs = img.split(",");
        double price = Double.parseDouble(request.getParameter("price"));
        Product newProd = new Product(cateID, productID, name, imgs, price);

        // add prod_variant 
        DAOItem itemDao = new DAOItem();
        int size = Integer.parseInt(request.getParameter("size"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        if (prodDao.getProduct(productID) != null) {
            request.setAttribute("error", "Product exists!");
            request.getRequestDispatcher("admin/AddProducts.jsp").forward(request, response);
        } else {
            int row = prodDao.addProduct(newProd);
            int row1 = itemDao.addItem(new Item(newProd, stock, size));
            System.out.println("Product: " + row + "\nProd_Variant: " + row1);
            response.sendRedirect("ViewProducts");
        }
    }
}
