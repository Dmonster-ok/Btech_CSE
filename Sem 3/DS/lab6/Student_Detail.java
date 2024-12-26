import java.util.*;
public class Student_Detail{

    int Enrollment_No;
    String Name;
    int Semester;
    double CPI;

    Student_Detail(int Enrollment_No, String Name, int Semester, double CPI){
        this.Enrollment_No = Enrollment_No;
        this.Name = Name;
        this.Semester = Semester;
        this.CPI = CPI;
    }

    void display(){
        System.out.println("Enrollment No: " + Enrollment_No);
        System.out.println("Name: " + Name);
        System.out.println("Semester: " + Semester);
        System.out.println("CPI: " + CPI);
    }
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        
        Student_Detail[] students = new Student_Detail[5];

        for(int i = 0; i < 5; i++){
            System.out.println("Enter Enrollment No: ");
            int Enrollment_No = s.nextInt();
            System.out.println("Enter Name: ");
            String Name = s.next();
            System.out.println("Enter Semester: ");
            int Semester = s.nextInt();
            System.out.println("Enter CPI: ");
            double CPI = s.nextDouble();

            students[i] = new Student_Detail(Enrollment_No, Name, Semester, CPI);
        }

        for(int i = 0; i < 5; i++){
            students[i].display();
        }
    }
}