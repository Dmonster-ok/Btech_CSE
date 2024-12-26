import java.util.*;

public class Company {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        Employee emp = new Employee("ABC","Rajkot","Java" ,31, 99886634, 50000);
        Manager man = new Manager("ABC","Rajkot","Web" ,31, 99886634, 50000);
        
        emp.display();
        man.display();
    
    }
}

class Member {
    String name, adress;
    int age, phoneno;
    double salary;
    

    Member(String name, String adress, int age, int phoneno, double salary) {
        this.name = name;
        this.adress = adress;
        this.age = age;
        this.phoneno = phoneno;
        this.salary = salary;
    }

    void display() {
        System.out.println("<-----------Member----------->");
        System.out.println("Name : " + name);
        System.out.println("Adadress : " + adress);
        System.out.println("Age : " + age);
        System.out.println("Phone no. : " + phoneno);
        System.out.println("Salary : " + salary);
    }
}

class Employee extends Member {
    String specialization;

    Employee(String name, String adress, String specialization, int age, int phoneno, double salary) {
        super(name, adress, age, phoneno, salary);
        this.specialization = specialization;
    }

    void display() {
        super.display();
        System.out.println("Specialization : " + specialization);
    }
}

class Manager extends Member {
    String department;

    Manager(String name, String adress, String department, int age, int phoneno, double salary) {
        super(name, adress, age, phoneno, salary);
        this.department = department;
    }

    void display() {
        super.display();
        System.out.println("Specialization : " + department);
    }
}