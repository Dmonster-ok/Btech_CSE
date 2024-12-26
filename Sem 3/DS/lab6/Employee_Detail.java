import java.util.*;

public class Employee_Detail {
    int Employee_ID;
    String Name;
    String Designation;
    double Salary;

    Employee_Detail(int Employee_ID, String Name, String Designation, double Salary) {
        this.Employee_ID = Employee_ID;
        this.Name = Name;
        this.Designation = Designation;
        this.Salary = Salary;
    }

    void display() {
        System.out.println("Employee ID: " + Employee_ID);
        System.out.println("Name: " + Name);
        System.out.println("Designation: " + Designation);
        System.out.println("Salary: " + Salary);
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.println("Enter Employee ID: ");
        int Employee_ID = s.nextInt();
        System.out.println("Enter Name: ");
        String Name = s.next();
        System.out.println("Enter Designation: ");
        String Designation = s.next();
        System.out.println("Enter Salary: ");
        double Salary = s.nextDouble();

        Employee_Detail e = new Employee_Detail(Employee_ID, Name, Designation, Salary);

        e.display();

    }
}