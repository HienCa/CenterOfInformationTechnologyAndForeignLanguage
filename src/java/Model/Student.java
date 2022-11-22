/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class Student extends Person {
    private String AnhCK;
    
    public Student(int Ma, String HoTen, String Email, String Password, String SDT, String CCCD, String NoiSinh, String AnhCK, String NgaySinh ) {
        super(Ma, HoTen, Email, Password, SDT, CCCD, NoiSinh, NgaySinh);
        this.AnhCK = AnhCK;
    }
    
    
    
    public String getAnhCK() {
        return AnhCK;
    }

    public void setAnhCK(String AnhCK) {
        this.AnhCK = AnhCK;
    }
    
    
}
