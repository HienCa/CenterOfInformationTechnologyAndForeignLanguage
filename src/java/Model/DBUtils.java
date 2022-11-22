package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBUtils {

    public DBUtils() {

    }

    public static ArrayList<Student> AllStudent() throws SQLException {
        Connection con = null;
        ArrayList<Student> list = new ArrayList();
        try {
            con = MySQLConntUtils.getMySQLConnection();
            String sql = "select * from Hocvien";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int Ma = rs.getInt("Ma");
                String HoTen = rs.getString("HoTen");
                String Email = rs.getString("Email");
                String Password = rs.getString("SDT");
                String CCCD = rs.getString("CCCD");
                String NoiSinh = rs.getString("NoiSinh");
                String AnhCK = rs.getString("AnhCK");
                String SDT = rs.getString("SDT");

                String NgaySinh = rs.getString("NgaySinh");
                Student st = new Student(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK, NgaySinh);

                list.add(st);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            //Logger.getLogger(DanhSachTK.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static Student OneStudent(int ma) throws SQLException {
        Connection con = null;
        try {
            con = MySQLConntUtils.getMySQLConnection();
            String sql = "select * from account where Ma = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, ma);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int Ma = rs.getInt("Ma");
                String HoTen = rs.getString("HoTen");
                String Email = rs.getString("Email");
                String Password = rs.getString("SDT");
                String CCCD = rs.getString("CCCD");
                String NoiSinh = rs.getString("NoiSinh");
                String AnhCK = rs.getString("AnhCK");
                String SDT = rs.getString("SDT");
                String NgaySinh = rs.getString("NgaySinh");
                
                Student st = new Student(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK, NgaySinh);

                return st;
            }
        } catch (SQLException | ClassNotFoundException ex) {
            //Logger.getLogger(DanhSachTK.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static RegistrationInformation getStudentInfo(int ma) throws SQLException {
        Connection con = null;
        try {
            con = MySQLConntUtils.getMySQLConnection();
            String sql = "select * from HocVien hv join chitietdangky ct on hv.MaHV =ct.MaHV join khoahoc kh on kh.makh= ct.makh where Ma = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, ma);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int Ma = rs.getInt("Ma");
                String HoTen = rs.getString("HoTen");
                String Email = rs.getString("Email");
                String Password = rs.getString("SDT");
                String CCCD = rs.getString("CCCD");
                String NoiSinh = rs.getString("NoiSinh");
                String AnhCK = rs.getString("AnhCK");
                String SDT = rs.getString("SDT");
                String NgaySinh = rs.getString("NgaySinh");
                
                Student st = new Student(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK, NgaySinh);

                String TGBD = rs.getString("TGBD");
                String TGKT = rs.getString("TGKT");

                int TenKH = Integer.parseInt(rs.getString("TenKH"));
                String MaKH = rs.getString("MaKH");
                Courses course = new Courses(TenKH, MaKH);

                RegistrationInformation reIn = new RegistrationInformation(st, TGBD, TGKT, course);

                return reIn;
            }
        } catch (SQLException | ClassNotFoundException ex) {
            //Logger.getLogger(DanhSachTK.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static Boolean FindStudent(String e) throws SQLException {
        Connection con = null;

        try {
            con = MySQLConntUtils.getMySQLConnection();
            String sql = "select * from HocVien where Email = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, e);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int Ma = rs.getInt("Ma");
                String HoTen = rs.getString("HoTen");
                String Email = rs.getString("Email");
                String Password = rs.getString("SDT");
                String CCCD = rs.getString("CCCD");
                String NoiSinh = rs.getString("NoiSinh");
                String AnhCK = rs.getString("AnhCK");
                String SDT = rs.getString("SDT");
                String NgaySinh = rs.getString("NgaySinh");
                
                Student st = new Student(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK, NgaySinh);

                return true;
            }

        } catch (SQLException | ClassNotFoundException ex) {
            //Logger.getLogger(DanhSachTK.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static void insertStudent(Connection con, Student st) throws SQLException {
        String sql = "insert into HocVien( HoTen, Email, Password, SDT, CCCD, NoiSinh, AnhCK) values( ? ,?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, st.getHoTen());
        ps.setString(2, st.getEmail());
        ps.setString(3, st.getPassword());
        ps.setString(4, st.getSDT());
        ps.setString(5, st.getCCCD());
        ps.setString(6, st.getNoiSinh());
        ps.setString(7, st.getAnhCK());

        ps.executeUpdate();
    }

    public static void deleteTK(Connection con, int mahv) throws SQLException {
        String sql = "delete from HocVien where MaHV = ? ";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, mahv);
        ps.executeUpdate();
    }

    public static void updateTK(Connection con, Student st) throws SQLException {
        String sql = "update HocVien set HoTen = ?, Email = ?, Password = ?, SDT = ?, CCCD = ?, NoiSinh = ?, AnhCK = ? where MaHV = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, st.getHoTen());
        ps.setString(2, st.getEmail());
        ps.setString(3, st.getPassword());
        ps.setString(4, st.getSDT());
        ps.setString(5, st.getCCCD());
        ps.setString(6, st.getNoiSinh());
        ps.setString(7, st.getAnhCK());

        ps.executeUpdate();
    }

    //COURSE   
    public static void insertCourseDetail(Connection con, CourseDetails cd) throws SQLException {
        String sql = "insert into chitietkhoahoc( MaHV, MaKH, MaCa, SoLuong, SoPhong) values( ? ,?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, cd.getStudent().getMa());
        ps.setInt(2, cd.getCourse().getMaKH());
        ps.setInt(3, cd.getCa().getMaCa());
        ps.setInt(4, cd.getCount());
        ps.setString(5, cd.getRoomNumber());

        ps.executeUpdate();
    }

    public static void deleteCourseDetail(Connection con, int makh) throws SQLException {
        String sql = "delete from chitietkhoahoc where MaKH = ? ";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, makh);
        ps.executeUpdate();
    }

    public static void updateCourseDetail(Connection con, CourseDetails cd) throws SQLException {
        String sql = "update chitietkhoahoc set Status = 1 where MaKH = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, cd.getStudent().getMa());

        ps.executeUpdate();
    }

}
