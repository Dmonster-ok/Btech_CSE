import java.util.*;

public class Circle {

    void area(double r) {
        System.out.println("Area of Circle: " + (Math.PI * r * r));
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        Circle c = new Circle();
        System.out.print("Enter radius: ");
        c.area(s.nextDouble());
    }
}