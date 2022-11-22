/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class RESULTS {
    private String MaKQ;
    private String DiemLT;
    private String DiemTH;

    
    public RESULTS(String MaKQ, String DiemLT, String DiemTH){
        this.MaKQ = MaKQ;
        this.DiemLT =DiemLT;
        this.DiemTH =DiemTH;
    }

    public String getMaKQ() {
        return MaKQ;
    }

    public void setMaKQ(String MaKQ) {
        this.MaKQ = MaKQ;
    }

    public String getDiemLT() {
        return DiemLT;
    }

    public void setDiemLT(String DiemLT) {
        this.DiemLT = DiemLT;
    }

    public String getDiemTH() {
        return DiemTH;
    }

    public void setDiemTH(String DiemTH) {
        this.DiemTH = DiemTH;
    }
    
    
}
