/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Mode {

    int MaHT;
    String TenHT;

    public Mode(int MaHT, String TenHT) {
        this.MaHT = MaHT;
        this.TenHT = TenHT;
    }

    public Mode(int MaHT) {
        this.MaHT = MaHT;
    }

    public int getMaHT() {
        return MaHT;
    }

    public void setMaHT(int MaHT) {
        this.MaHT = MaHT;
    }

    public String getTenHT() {
        return TenHT;
    }

    public void setTenHT(String TenHT) {
        this.TenHT = TenHT;
    }

}
