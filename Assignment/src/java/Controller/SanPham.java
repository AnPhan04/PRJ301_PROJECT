/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Cart;
import Entity.Item;
import Entity.Product;
import Model.DAOProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Vector;

/**
 *
 * @author Tran Tuan
 */
@WebServlet(name = "SanPham", urlPatterns = {"/SanPham"})
public class SanPham extends HttpServlet {

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

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SanPham</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SanPham at " + request.getContextPath() + "</h1>");
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
        try ( PrintWriter out = response.getWriter()) {

            DAOProduct dao = new DAOProduct();

            String proID = request.getParameter("proID");

            Vector<Product> list = null;
            list = dao.listAllProduct("select * from Product where "
                    + "prodID='" + proID + "'");
            int anh = list.get(0).getProductImg().length;
            String tensp = list.get(0).getProductName();

            int soluongsanpham = dao.SoLuongSanPham("select sum(pv.stock) from Product p,Prod_Variant pv where p.prodID=pv.prodID  and "
                    + "p.prodID='" + proID + "'");

            request.setAttribute("productID", proID);
            request.setAttribute("soluong", soluongsanpham);
            request.setAttribute("tensp", tensp);
            request.setAttribute("sizeanh", anh);
            request.setAttribute("list", list);

            request.getRequestDispatcher("SanPham.jsp").forward(request, response);
        }
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
        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            DAOProduct dao = new DAOProduct();

            String proID = request.getParameter("proID");
            String size_s = request.getParameter("size");

            if (size_s.equals("") == false) {
                int size = Integer.parseInt(size_s);
                Vector<Product> list = null;
                list = dao.listAllProduct("select * from Product where "
                        + "prodID='" + proID + "'");
                int anh = list.get(0).getProductImg().length;
                String tensp = list.get(0).getProductName();

                int soluongsanpham = dao.SoLuongSanPham("select sum(pv.stock) from Product p,Prod_Variant pv where p.prodID=pv.prodID  and "
                        + "p.prodID='" + proID + "' and pv.size=" + size + "");

                request.setAttribute("size", size_s);
                request.setAttribute("productID", proID);
                request.setAttribute("soluong", soluongsanpham);
                request.setAttribute("tensp", tensp);
                request.setAttribute("sizeanh", anh);
                request.setAttribute("list", list);
            } else {
                Vector<Product> list = null;
                list = dao.listAllProduct("select * from Product where "
                        + "prodID='" + proID + "'");
                int anh = list.get(0).getProductImg().length;
                String tensp = list.get(0).getProductName();

                int soluongsanpham = dao.SoLuongSanPham("select sum(pv.stock) from Product p,Prod_Variant pv where p.prodID=pv.prodID  and "
                        + "p.prodID='" + proID + "'");
                request.setAttribute("size", size_s);
                request.setAttribute("productID", proID);
                request.setAttribute("soluong", soluongsanpham);
                request.setAttribute("tensp", tensp);
                request.setAttribute("sizeanh", anh);
                request.setAttribute("list", list);
            }

            request.getRequestDispatcher("SanPham.jsp").forward(request, response);
        }
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
