/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Product;
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
        DAOProduct prodDao = new DAOProduct();
        int cateID = Integer.parseInt(request.getParameter("category"));
        String productID = request.getParameter("productID");
        String name = (String) request.getParameter("name");
        String[] imgs = {"images/Female/FMDEP/FMDEPBL/1.jpg"};
        double price = Double.parseDouble(request.getParameter("price"));
        Product newProd = new Product(cateID, productID, name, imgs, price);
        if (prodDao.getProductByID(productID) != null) {
            request.setAttribute("error", "Product existed!");
            request.getRequestDispatcher("admin/EditProducts.jsp").forward(request, response);
        } else {
            int result = prodDao.addProduct(newProd);
            System.out.println(result);
//            cần phải đi qua view products servlet trước khi đi đến view products jsp
            response.sendRedirect("ViewProducts");
        }
    }
}
