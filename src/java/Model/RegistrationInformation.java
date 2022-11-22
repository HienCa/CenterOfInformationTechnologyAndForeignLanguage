/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author PC
 */
public class RegistrationInformation {

    private Student student;
    private String TGBD;
    private String TGKT;
    private Courses course;
    
    public RegistrationInformation(Student student, String TGBD, String TGKT, Courses course){
        this.student = student;
        this.course = course;
        this.TGBD = TGBD;
        this.TGKT = TGKT;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getTGBD() {
        return TGBD;
    }

    public void setTGBD(String TGBD) {
        this.TGBD = TGBD;
    }

    public String getTGKT() {
        return TGKT;
    }

    public void setTGKT(String TGKT) {
        this.TGKT = TGKT;
    }

    public Courses getCourse() {
        return course;
    }

    public void setCourse(Courses course) {
        this.course = course;
    }
    
    
}
