// public class FinalDemo extends B // Error: The type FinalDemo cannot subclass the final class B
public class FinalSuperDemo extends A {

    // void display() {
    // System.out.println("Class FinalDemo");
    // } // Error: display() in FinalDemo cannot override display() in A

    void display(int x) {
        super.display(x);
        System.out.println("Class FinalDemo: " + x);
    }
    public static void main(String[] args) {
        final int x = 10;
        // x = 20; // Error: cannot assign a value to final variable x
        System.out.println("x: " + x);
        FinalSuperDemo fd = new FinalSuperDemo();
        fd.display(20);
    }
}

class A {
    final void display() {
        System.out.println("Class A");
    }
    void display(int x) {
        System.out.println("Class A: " + x);
    }
}

final class B {
    void display() {
        System.out.println("Class B");
    }
}