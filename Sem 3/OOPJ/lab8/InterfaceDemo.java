interface A {
    int CONST_A = 1;
    void methodA();
}

interface A1 extends A {
    int CONST_A1 = 2;
    void methodA1();
}

interface A2 extends A {
    int CONST_A2 = 3;
    void methodA2();
}

interface A12 extends A1, A2 {
    int CONST_A12 = 4;
    void methodA12();
}

class B implements A12 {
    public void methodA() {
        System.out.println("CONST_A: " + CONST_A);
    }

    public void methodA1() {
        System.out.println("CONST_A1: " + CONST_A1);
    }

    public void methodA2() {
        System.out.println("CONST_A2: " + CONST_A2);
    }

    public void methodA12() {
        System.out.println("CONST_A12: " + CONST_A12);
    }
}

public class InterfaceDemo {
    public static void main(String[] args) {
        B b = new B();
        b.methodA();
        b.methodA1();
        b.methodA2();
        b.methodA12();
    }
}

