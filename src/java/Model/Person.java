/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Person {

    private int Ma;
    private String HoTen;
    private String Email;
    private String Password;
    private String SDT;
    private String CCCD;
    private String NoiSinh;
    private String NgaySinh;

    public Person(int Ma, String HoTen, String Email, String Password, String SDT, String CCCD, String NoiSinh, String NgaySinh) {
        this.Ma = Ma;
        this.HoTen = HoTen;
        this.Email = Email;
        this.CCCD = CCCD;
        this.Password = Password;
        this.SDT = SDT;
        this.NoiSinh = NoiSinh;
        this.NgaySinh = NgaySinh;
    }

    public Person(Person p) {
        this.Ma = p.Ma;
        this.HoTen = p.HoTen;
        this.Email = p.Email;
        this.CCCD = p.CCCD;
        this.Password = p.Password;
        this.SDT = p.SDT;
        this.NoiSinh = p.NoiSinh;
        this.NgaySinh = p.NgaySinh;
    }

    public String getNgaySinh() {
        return NgaySinh;
    }

    public void setNgaySinh(String NgaySinh) {
        this.NgaySinh = NgaySinh;
    }

    public int getMa() {
        return Ma;
    }

    public void setMa(int Ma) {
        this.Ma = Ma;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getCCCD() {
        return CCCD;
    }

    public void setCCCD(String CCCD) {
        this.CCCD = CCCD;
    }

    public String getNoiSinh() {
        return NoiSinh;
    }

    public void setNoiSinh(String NoiSinh) {
        this.NoiSinh = NoiSinh;
    }

}
