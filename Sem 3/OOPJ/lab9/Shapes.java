import java.util.Scanner;

interface Shape {
    public void getArea();
}


class Rectangle implements Shape {
    static Scanner s = new Scanner(System.in);
    public void getArea() {
        System.out.print("Enter length: ");
        int length = s.nextInt();
        System.out.print("Enter width: ");
        int width = s.nextInt();
        System.out.println("Area: " + (length * width));
    }
}

class Circle implements Shape {
    static Scanner s = new Scanner(System.in);
    public void getArea() {
        System.out.print("Enter radius: ");
        int radius = s.nextInt();
        System.out.println("Area: " + (Math.PI * radius));
    }
}

class Triangle implements Shape {
    static Scanner s = new Scanner(System.in);
    public void getArea() {
        System.out.print("Enter base: ");
        int base = s.nextInt();
        System.out.print("Enter height: ");
        int height = s.nextInt();
        System.out.println("Area: " + (1 / 2 * base * height));
    }
}

public class Shapes {
    public static void main(String[] args) {
        Rectangle r = new Rectangle();
        Circle c = new Circle();
        Triangle t = new Triangle();
        r.getArea();
        c.getArea();
        t.getArea();
    }
}
