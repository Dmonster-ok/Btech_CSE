import java.util.*;

public class Stack {
    int[] stack;
    int top = -1;

    public Stack(int s) {
        this.stack = new int[s];
    }

    public void display() {
        if (top == -1) {
            System.out.println("Stack is empty");
        }
        for (int i = top; i >= 0; i--) {
            System.out.println(stack[i]);
        }
    }

    public void push(int value) {
        if (top >= stack.length - 1) {
            System.out.println("Stack Overflow");
        }
        stack[++top] = value;
    }

    public void pop() {
        if (top == -1) {
            System.out.println("Stack Underflow");
        }
        System.out.println("Popped element: " + stack[top--]);
    }

    public void peep(int index) {
        int i = top - index + 1;

        if (i < 0) {
            System.out.println("Invalid index");
        }
        System.out.println("Element at index " + index + " is: " + stack[i]);
    }

    public void change(int index, int value) {
        int i = top - index + 1;

        if (i < 0) {
            System.out.println("Invalid index");
        }
        stack[i] = value;
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the size of the stack: ");
        int size = s.nextInt();
        Stack stack = new Stack(size);
        boolean flag = true;
        while (flag) {
            System.out.println("\n1. Push, 2. Pop, 3. Peep, 4. Change, 5. Display, 6. Exit\n");
            System.out.print("Enter your choice: ");
            int choice = s.nextInt();
            switch (choice) {
                case 1:// push
                    System.out.print("Enter the value to push: ");
                    int value = s.nextInt();
                    stack.push(value);
                    break;
                case 2:// pop
                    stack.pop();
                    break;
                case 3:// peep
                    System.out.print("Enter the index: ");
                    int index = s.nextInt();
                    stack.peep(index);
                    break;
                case 4:// change
                    System.out.print("Enter the index: ");
                    index = s.nextInt();
                    System.out.print("Enter the value: ");
                    value = s.nextInt();
                    stack.change(index, value);
                    break;
                case 5:// display
                    stack.display();
                    break;
                case 6:// exit
                    flag = false;
                    break;
                default:
                    System.out.println("Invalid choice");
            }
        }

    }
}