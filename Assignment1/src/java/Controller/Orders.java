/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Cart;
import Entity.Order;
import Entity.Product;
import Entity.User;
import Model.DAOOrder;
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
@WebServlet(name = "Orders", urlPatterns = {"/Orders"})
public class Orders extends HttpServlet {

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
            DAOOrder d = new DAOOrder();

            DAOProduct dao = new DAOProduct();
            Vector<Product> list = dao.listAllProduct("select * from Product");
            Cookie[] arr = request.getCookies();
            String txt = "";
            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("cart")) {
                        txt += o.getValue();
                    }
                }
            }

            Cart cart = new Cart(txt, list);

            User u = (User) session.getAttribute("u");
            String hovaten = request.getParameter("hovaten");
            String email = request.getParameter("email");
            String sdt = request.getParameter("sdt");
            String diachi = request.getParameter("diachi");
            String xa = request.getParameter("xa");
            String huyen = request.getParameter("huyen");
            String tinh = request.getParameter("tinh");

            out.println("tinh:" + tinh);

            if (u != null) {
                Order o = new Order(u.getUserId(), hovaten, email, sdt, diachi, xa, huyen, tinh);
                d.addOrder(o, cart);
            } else {
                Order o = new Order(hovaten, email, sdt, diachi, xa, huyen, tinh);
                d.addOrder(o, cart);
            }

            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("cart")) {

                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
            }
            int cartSize = 0;
            session.removeAttribute("sizeCart");
            session.setAttribute("sizeCart", cartSize);

            String thongbao = "Mua hàng thành công. Cảm ơn quý khách!";
            request.setAttribute("thongbao", thongbao);
            request.getRequestDispatcher("GiaoHang.jsp").forward(request, response);

//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Orders</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Orders at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        }
    }
}
