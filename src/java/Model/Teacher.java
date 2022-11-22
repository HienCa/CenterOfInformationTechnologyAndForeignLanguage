/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Teacher extends Person {
    private String TrinhDo;
    
    public Teacher(int Ma, String HoTen, String Email, String Password, String SDT, String CCCD, String NoiSinh, String TrinhDo, String NgaySinh ) {
        super(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, NgaySinh);
        this.TrinhDo = TrinhDo;
    }

    public String getTrinhDo() {
        return TrinhDo;
    }

    public void setTrinhDo(String TrinhDo) {
        this.TrinhDo = TrinhDo;
    }
    
    
}
