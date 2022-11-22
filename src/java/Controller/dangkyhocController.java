/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Ca;
import Model.CourseDetails;
import Model.Courses;
import Model.DBUtils;
import Model.Mode;
import Model.MySQLConntUtils;
import Model.Student;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author PC
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
@WebServlet(name = "dangkyhocController", urlPatterns = {"/dangkyhocController"})
public class dangkyhocController extends HttpServlet {

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
            out.println("<title>Servlet dangkyhocController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dangkyhocController at " + request.getContextPath() + "</h1>");
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
        Connection con = null;
        try {
            con = MySQLConntUtils.getMySQLConnection();
            request.setCharacterEncoding("UTF-8");

            String AnhCK = "";
            Part part = request.getPart("AnhCK");
            String fileName = extractFileName(part);
            fileName = new File(fileName).getName();
            String path1 = request.getContextPath();
            System.out.println(path1);
            part.write("D:/ĐH-08CNTT1/08_CNPM/LapTrinhWeb_ASP.NET/CFLIT_HCMUNRE/build/web/imgs/" + fileName);

            AnhCK = fileName;

            int MaHV = Integer.parseInt(request.getParameter("MaHV"));
            String HoTen = request.getParameter("HoTen");
            String Email = request.getParameter("Email");
            String Password = request.getParameter("Password");
            String SDT = request.getParameter("SDT");
            String CCCD = request.getParameter("CCCD");
            String NoiSinh = request.getParameter("NoiSinh");
            String NgaySinh = request.getParameter("NgaySinh");

            Student st = new Student(MaHV, HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK, NgaySinh);

            int SoLuong = Integer.parseInt(request.getParameter("SoLuong"));
            int MaKH = Integer.parseInt(request.getParameter("MaKH"));
            int MaCa = Integer.parseInt(request.getParameter("MaCa"));
            String SoPhong = request.getParameter("SoPhong");

            Courses course = new Courses(MaKH);
            Ca ca = new Ca(MaCa);

            int MaHT = Integer.parseInt(request.getParameter("MaHT"));
            Mode mode = new Mode(MaHT);
            CourseDetails ctkh = new CourseDetails(st, course, ca, SoLuong, SoPhong, 0, mode);

            if (DBUtils.FindStudent(st.getEmail()) == false) {

                DBUtils.insertStudent(con, st);
                DBUtils.insertCourseDetail(con, ctkh);

            } else {
                DBUtils.insertCourseDetail(con, ctkh);

            }
            request.setAttribute("success", "Đăng ký thành công");
            request.getRequestDispatcher("/dangkyhoc.jsp").forward(request, response);

            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(dangkyhocController.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(dangkyhocController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        processRequest(request, response);
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
