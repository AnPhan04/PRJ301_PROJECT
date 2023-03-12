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
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             DAOUser dao = new DAOUser();
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");
            
             User u=dao.getUser(username, password);
             if(u==null) {
                String error="Mật Khẩu hoặc Tài Khoản không chính xác!";
                request.setAttribute("error",error);
                request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
            }else {
                HttpSession session=request.getSession();

                String ho=u.getHo();
                String ten=u.getTen();

                String address="";
                String sdt="";
                if(u.getAddress()!=null||u.getSdt()!=null) {
                    address=u.getAddress();
                    sdt=u.getSdt();
                }
                
                
                
                String hoten=ho+" "+ten;                
                String viettat=ho.substring(0, 1)+ten.substring(0, 1);
                
                String u1="hienlen";
                session.setAttribute("hienlen",u1);
                session.setAttribute("hoten",hoten);
                session.setAttribute("viettat",viettat);
//
//                session.setAttribute("address",address);
//                session.setAttribute("sdt",sdt);

                session.setAttribute("ho",ho);
                session.setAttribute("ten",ten);
                   
                session.setAttribute("u",u);
                
                session.setAttribute("size",0);

                
                 request.getRequestDispatcher("UserHome.jsp").forward(request, response);
            }
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
