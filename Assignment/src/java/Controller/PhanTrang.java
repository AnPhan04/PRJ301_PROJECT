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
import java.util.Vector;

/**
 *
 * @author Tran Tuan
 */
@WebServlet(name="PhanTrang", urlPatterns={"/PhanTrang"})
public class PhanTrang extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            
            DAOProduct dao=new DAOProduct();
            
            String categoryNam = request.getParameter("doNam");
            if(categoryNam==null) {
                categoryNam="nam";
            }
            Vector<Product> list = null;
            String do1 = null ;
            if (categoryNam.equals("MHT")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MHT";
            }else if(categoryNam.equals("MSD")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MSD";          
            }else if(categoryNam.equals("MSP")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MSP";          
            }else if(categoryNam.equals("MRUN")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MRUN";          
            }else if(categoryNam.equals("MSC")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MSC";          
            }else if(categoryNam.equals("MTAY")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MTAY";          
            }else if(categoryNam.equals("MDEP")) {
                list = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNam + "')");
                do1="MDEP";          
            }else if(categoryNam.equals("nam")) {
                list=dao.listAllProduct("select * from Product where prodID like 'M%'");
                do1="nam";          
            }
            
       
            int page,numperpage=4;
            int size=list.size();
   
            int num=(size%4==0?(size/4):((size/4)+1));
            String xpage=request.getParameter("page");
            if(xpage==null) {
                page=1;
            }else {
                page=Integer.parseInt(xpage);
            }
            
            int start,end;
            start=(page-1)*numperpage;
            end=Math.min(page*numperpage, size);
            
            Vector<Product> list1=dao.getListByPage(list, start, end);
            
            int a[] = new int[list1.size()];
            for(int i=0;i<list1.size();i++) {
                a[i]=list1.get(i).getProductImg().length;
            }
            request.setAttribute("do1",do1);
            request.setAttribute("size",a);
            request.setAttribute("num",num);
            request.setAttribute("page",page);
            request.setAttribute("list1",list1);
            
            
            String categoryNu = request.getParameter("doNu");
            if(categoryNu==null) {
                categoryNu="nu";
            }
            Vector<Product> listN = null;
            String do2 = null ;
            if (categoryNu.equals("FMHT")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMHT";
            }else if(categoryNu.equals("FMSD")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMSD";          
            }else if(categoryNu.equals("FMDOLL")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMDOLL";          
            }else if(categoryNu.equals("FMFA")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMFA";          
            }else if(categoryNu.equals("FMRUN")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMRUN";          
            }else if(categoryNu.equals("FMSP")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMSP";          
            }else if(categoryNu.equals("FMDEP")) {
                listN = dao.listAllProduct("select * from Product where "
                        + "cateID=(select cateID from Category where cateName='" + categoryNu + "')");
                do2="FMDEP";          
            }else if(categoryNu.equals("nu")) {
                listN=dao.listAllProduct("select * from Product where prodID like 'FM%'");
                do2="nu";          
            }
            
            int pageNu;
            int sizeNu=listN.size();
            int numNu=(sizeNu%4==0?(sizeNu/4):((sizeNu/4)+1));
            String xpageNu=request.getParameter("pageNu");
//            out.print(pageNu);
            if(xpageNu==null) {
                pageNu=1;
            }else {
                pageNu=Integer.parseInt(xpageNu);
            }
            
            out.print(numNu);
            int startNu,endNu;
            startNu=(pageNu-1)*numperpage;
            endNu=Math.min(pageNu*numperpage, sizeNu);
            
            Vector<Product> list2=dao.getListByPage(listN, startNu, endNu);
            
            int a2[] = new int[list2.size()];
            for(int i=0;i<list2.size();i++) {
                a2[i]=list2.get(i).getProductImg().length;
            }
            request.setAttribute("do2",do2);
            request.setAttribute("sizeNu",a2);
            request.setAttribute("numNu",numNu);
            request.setAttribute("pageNu",pageNu);
            request.setAttribute("list2",list2);
            
            
     

            request.getRequestDispatcher("Home.jsp").forward(request, response);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhanTrang</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PhanTrang at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
