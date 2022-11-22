/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "LoadFormInfo", urlPatterns = {"/LoadFormInfo"})
public class LoadFormInfo extends HttpServlet {

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
        String findBSTY = request.getParameter("findBSTY");
        Connection con = null;
        try {
            //VIẾT DBUTIL CHO CÁC LIST
            con = MySQLConntUtils.getMySQLConnection();
            ArrayList<Courses> listKH = DBUtils.FindBSTY(con, findBSTY);
            ArrayList<Ca> listCa = DBUtils.FindBSTY(con, findBSTY);
            ArrayList<Courses> listHT = DBUtils.FindBSTY(con, findBSTY);
            if (listKH != null && listCa != null && listHT != null) {
                request.setAttribute("listKH", listKH);
                request.setAttribute("listCa", listCa);
                request.setAttribute("listHT", listHT);
                request.getRequestDispatcher("/dangkyhoc.jsp").forward(request, response);

            } else {
                request.setAttribute("e", "không có dữ liệu");
                request.getRequestDispatcher("/QuanLyBSTY.jsp").forward(request, response);

            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(LoadFormInfo.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("e", ex);
            request.getRequestDispatcher("/QuanLyBSTY.jsp").forward(request, response);

        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LoadFormInfo.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
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
