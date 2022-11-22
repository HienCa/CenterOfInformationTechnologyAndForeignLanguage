/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Ca {
    int MaCa;
    String TenCa;
    
    public Ca(int MaCa, String TenCa){
        this.MaCa = MaCa;
        this.TenCa =TenCa;
    }
    
    public Ca(int MaCa){
        this.MaCa = MaCa;
    }

    public int getMaCa() {
        return MaCa;
    }

    public void setMaCa(int MaCa) {
        this.MaCa = MaCa;
    }

    public String getTenCa() {
        return TenCa;
    }

    public void setTenCa(String TenCa) {
        this.TenCa = TenCa;
    }
    
}
