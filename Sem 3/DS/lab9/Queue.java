import java.util.Scanner;

public class Queue {

    static int[] queue;
    static int front = -1;
    static int rear = -1;
    static int n = 0;

    public Queue(int n) {
        queue = new int[n];
        this.n = n;
    }

    void enqueue(int val) {
        if (rear == n - 1) {
            display();
            throw new Error("Queue Overflow");
        }
        if (front == -1) {
            front = rear = 0;
        } else {
            rear++;
        }
        queue[rear] = val;
    }

    void dequeue() {
        if (front == -1 || rear == -1) {
            throw new Error("Queue Underflow");
        }
        if (front == rear) {
            front = rear = -1;
        } else {
            front++;
        }
    }

    void display() {
        if (front == -1 || rear == -1) {
            throw new Error("Queue Underflow");
        }
        for (int i = rear; i >= front; i--) {
            System.out.print(queue[i] + ((i == front) ? ("") : (" -> ")));
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("Enter Size of Queue: ");
        Queue q = new Queue(s.nextInt());

        int c = 0;
        boolean f = true;
        while (f) {
            System.out.println("Press 1 Enqueue");
            System.out.println("Press 2 Dequeue");
            System.out.println("Press 3 Display");
            System.out.println("Press 4 Exit");
            c = s.nextInt();
            switch (c) {
                case 1:
                    System.out.print("Enter Element: ");
                    q.enqueue(s.nextInt());
                    break;
                case 2:
                    q.dequeue();
                    break;
                case 3:
                    q.display();
                    break;
                case 4:
                    f = false;
                    break;
                default:
                    System.out.println("Invalid Choice");
            }
        }
    }
}
