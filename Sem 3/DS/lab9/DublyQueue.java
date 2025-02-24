
import java.util.Scanner;

public class DublyQueue {

    static int[] queue;
    static int front = -1;
    static int rear = -1;
    static int n = 0;

    public DublyQueue(int n) {
        queue = new int[n];
        this.n = n;
    }

    void enqueueRear(int val) {
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

    void enqueueFront(int val) {
        if (front == 0) {
            throw new Error("Queue Overflow");
        }
        if (front == -1) {
            front = rear = 0;
        } else {
            front--;
        }
        queue[front] = val;
    }

    void dequeueRear() {
        if (rear == -1) {
            throw new Error("Queue Underflow");
        }
        if (front == rear) {
            front = rear = -1;
        } else {
            rear--;
        }
    }

    void dequeueFront() {
        if (front == -1) {
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
        for (int i = front; i <= rear; i++) {
            System.out.print(queue[i] + ((i == rear) ? ("") : (" -> ")));
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        DublyQueue q = new DublyQueue(10);
        q.enqueueRear(10);
        q.enqueueRear(20);
        q.enqueueRear(30);
        q.enqueueRear(40);
        q.enqueueRear(50);
        q.enqueueRear(60);
        q.enqueueRear(70);
        q.enqueueRear(80);
        q.dequeueFront();
        q.dequeueFront();
        q.dequeueFront();
        q.enqueueFront(1);
        q.enqueueFront(2);
        q.dequeueRear();
        q.dequeueRear();
        q.dequeueRear();
        q.dequeueRear();
        q.dequeueRear();
        q.dequeueRear();
        q.dequeueRear();
        q.display();

    }
}
