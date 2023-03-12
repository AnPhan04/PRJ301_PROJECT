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
 * @author ASUS
 */
@WebServlet(name = "ProcessServlet", urlPatterns = {"/ProcessServlet"})
public class ProcessServlet extends HttpServlet {

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
            out.println("<title>Servlet ProcessServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessServlet at " + request.getContextPath() + "</h1>");
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
            Vector<Product> list = dao.listAllProduct("Select * from Product");
            Cookie[] arr = request.getCookies();
            String txt = "";
            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("cart")) {
                        txt += o.getValue();
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
            }

            Cart cart = new Cart(txt, list);
            String num_raw = request.getParameter("num");
            String id_raw = request.getParameter("id");
            String size_raw = request.getParameter("size");

            int size = Integer.parseInt(size_raw);

            int num;

            try {
                Product p = dao.getProductByID(id_raw);
                out.println(p);
                int numStore = 500;
                num = Integer.parseInt(num_raw);
                if (num == -1 && (cart.getQuantityByID(id_raw, size) <= 1)) {
                    cart.removeItem(id_raw, size);

                } else {

                    if (num == 1 && (cart.getQuantityByID(id_raw, size) >= numStore)) {
                        num = 0;
                    }

                    Item t = new Item(p, num, size, p.getPrice());

                    cart.addItem(t);
                }
            } catch (NumberFormatException e) {

            }

            Vector<Item> items = cart.getItems();
            txt = "";
            if (items.size() > 0) {
                txt = items.get(0).getProduct().getProductID() + ":" + items.get(0).getQuantity()
                        + ":" + items.get(0).getSize();
                for (int i = 1; i < items.size(); i++) {
                    txt += "'" + items.get(i).getProduct().getProductID() + ":" + items.get(i).getQuantity()
                            + ":" + items.get(i).getSize();
                }
            }

            Cookie c = new Cookie("cart", txt);
            c.setMaxAge(2 * 24 * 60 * 60);
            response.addCookie(c);
            request.setAttribute("cart", cart);
            float total = cart.getTotalMoney();
            request.setAttribute("total", total);
            request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        DAOProduct dao = new DAOProduct();
        Vector<Product> list = dao.listAllProduct("Select * from Product");
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }

        String id = request.getParameter("id");
        String size = request.getParameter("size");
        String[] ids = txt.split("'");
        String out = "";
        for (int i = 0; i < ids.length; i++) {
            String[] s = ids[i].split(":");
            if (!(s[0].equals(id) && s[2].equals(size))) {
                if (out.isEmpty()) {
                    out = ids[i];
                } else {
                    out += "'" + ids[i];
                }
            }
        }
        if (!out.isEmpty()) {
            Cookie c = new Cookie("cart", out);
            c.setMaxAge(2 * 24 * 60 * 60);
            response.addCookie(c);
        }
        Cart cart = new Cart(out, list);
        request.setAttribute("cart", cart);
        int cartSize = cart.getItems().size();

        session.removeAttribute("sizeCart");
        session.setAttribute("sizeCart", cartSize);

        float total = cart.getTotalMoney();
        request.setAttribute("total", total);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);

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
