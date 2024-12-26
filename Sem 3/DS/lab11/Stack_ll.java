public class Stack_ll {
    public class Node {

        int data;
        Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    Node FIRST = null;

    public void push(int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            FIRST = newNode;
            return;
        }
        Node tmp = FIRST;
        while (tmp.next != null) {
            tmp = tmp.next;
        }
        tmp.next = newNode;
    }

    public void insertAtPosition(int idx, int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        }

        Node suc = FIRST;
        Node pred = FIRST;

        if (idx == 0) {
            newNode.next = FIRST;
            FIRST = newNode;
            return;
        }
        int c = 0;
        while (suc != null && c != idx) {
            suc = pred;
            pred = pred.next;
            c++;
        }

        suc.next = newNode;
        newNode.next = pred;
    }

    public void pop() {
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        }
        Node tmp = FIRST;
        Node pred = FIRST;
        while (tmp.next != null) {
            pred = tmp;
            tmp = tmp.next;
        }
        pred.next = null;
    }

    public void display() {
        Node tmp = FIRST;
        int c = 0;
    System.out.println("----");
        while (tmp != null) {
            System.out.println("^");
            System.out.println(tmp.data);
            tmp = tmp.next;
            c++;
        }
    }


    public static void main(String[] args) {
        Stack_ll Stack = new Stack_ll();
        Stack.push(10);
        Stack.push(20);
        Stack.push(30);
        Stack.push(40);
        Stack.push(50);
        Stack.display();
        Stack.pop();
        Stack.display();
    }
}