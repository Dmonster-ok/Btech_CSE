
import java.util.Scanner;

public class Grammer {

    static char[] Stack;
    static int top = -1;

    public void push(char val) {
        if (top == Stack.length) {
            throw new Error("Stack is overflow");
        }
        top += 1;
        Stack[top] = val;
    }

    public char pop() {
        if (top == -1) {
            throw new Error("Stack is underflow");
        }
        char val = Stack[top];
        top -= 1;
        return val;
    }

    public char peep(int idx) {
        if (top == -1) {
            throw new Error("Stack is underflow");
        }
        return Stack[top - idx];
    }

    public char change(int idx, char val) {
        if (top == 0) {
            throw new Error("Stack is underflow");
        }
        Stack[top - idx] = val;
        return Stack[top - idx];
    }

    public void display() {
        if (top == -1) {
            throw new Error("Stack is underflow");
        }
        for (int i = 0; i <= top; i++) {
            System.out.print(Stack[i] + " ");
        }
    }

    public void recognize(String s) {
        int n = s.length();
        int c = s.indexOf('c') + 1;
        if (c == -1 || c == n) {
            throw new Error("Invalid String");
        }
        push('c');
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == 'c') {
                break;
            }
            push(s.charAt(i));
        }

        for (int i = c; i < n; i++) {
            char v = pop();
            if (v != s.charAt(i)) {
                throw new Error("Invalid String " + s.charAt(i) + " does not match");
            }
        }
        System.out.println("String is valid ");

    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        Grammer g = new Grammer();
        System.out.print("Enter String: ");
        String str = s.nextLine();
        Stack = new char[str.length() + 1];
        g.recognize(str);
    }
}
