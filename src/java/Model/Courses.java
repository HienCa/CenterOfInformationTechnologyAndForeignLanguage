/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Courses {
    private int MaKH;
    private String TenKH;
    
    public Courses(int MaKH, String TenKH){
        this.MaKH = MaKH;
        this.TenKH =TenKH;
    }
    
    public Courses(int MaKH){
        this.MaKH = MaKH;
    }

    public int getMaKH() {
        return MaKH;
    }

    public void setMaKH(int MaKH) {
        this.MaKH = MaKH;
    }

    public String getTenKH() {
        return TenKH;
    }

    public void setTenKH(String TenKH) {
        this.TenKH = TenKH;
    }
    
    
}
