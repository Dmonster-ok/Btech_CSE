// import java.util.*;

public class SLLlist {

    public class Node {

        int data;
        Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    Node FIRST = null;

    public void insertAtFirst(int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            FIRST = newNode;
            return;
        }
        newNode.next = FIRST;
        FIRST = newNode;
    }

    public void insertAtLast(int val) {
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

    public void deleteAtFirst() {
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        }
        FIRST = FIRST.next;
    }

    public void deleteAtLast() {
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

    public void deleteAtPosition(int idx) {
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        }

        Node suc = FIRST;
        Node pred = FIRST;

        if (idx == 0) {
            FIRST = FIRST.next;
            return;
        }
        int c = 0;
        while (suc != null && c != idx) {
            suc = pred;
            pred = pred.next;
            c++;
        }
        suc.next = pred.next;
    }

    public void display() {
        Node tmp = FIRST;
        int c = 0;
        System.out.println();
        while (tmp != null) {
            System.out.print(tmp.data + "->");
            tmp = tmp.next;
            c++;
        }
        System.out.println(" null " + "\nCount: " + c);
    }

    public void displayReverse(Node tmp) {

        if (tmp == null) {
            return;
        }
        displayReverse(tmp.next);
        System.out.print(tmp.data + "->");

    }

    static void copy(SLLlist list, SLLlist list2) {
        Node tmp = list.FIRST;
        while (tmp != null) {
            list2.insertAtLast(tmp.data);
            tmp = tmp.next;
        }
    }

    public static void main(String[] args) {
        SLLlist list = new SLLlist();
        SLLlist list2 = new SLLlist();

        java.util.Scanner s = new java.util.Scanner(System.in);

        list.insertAtFirst(1);
        list.insertAtFirst(2);
        list.insertAtFirst(3);
        list.insertAtFirst(4);
        list.insertAtFirst(5);
        list.insertAtFirst(6);
        list.display();
        copy(list, list2);
        list2.display();

        // boolean exit = false;

        // while (!exit) {
        // System.out.println("1. Insert at First");
        // System.out.println("2. Insert at Last");
        // System.out.println("3. Insert at Position");
        // System.out.println("4. Delete at First");
        // System.out.println("5. Delete at Last");
        // System.out.println("6. Delete at Position");
        // System.out.println("7. Display");
        // System.out.println("8. Exit");
        // System.out.print("Enter your choice: ");
        // int choice = s.nextInt();

        // switch (choice) {
        // case 1:
        // System.out.print("Enter value to insert at first: ");
        // list.insertAtFirst(s.nextInt());
        // break;
        // case 2:
        // System.out.print("Enter value to insert at last: ");
        // list.insertAtLast(s.nextInt());
        // break;
        // case 3:
        // System.out.print("Enter position to insert: ");
        // int idx = s.nextInt();
        // System.out.print("Enter value to insert: ");
        // list.insertAtPosition(idx,s.nextInt());
        // break;
        // case 4:
        // list.deleteAtFirst();
        // break;
        // case 5:
        // list.deleteAtLast();
        // break;
        // case 6:
        // System.out.print("Enter position to delete: ");
        // list.deleteAtPosition(s.nextInt());
        // break;
        // case 7:
        // list.display();
        // break;
        // case 8:
        // exit = true;
        // break;
        // default:
        // System.out.println("Invalid choice. Please try again.");
        // }
        // }
    }
}
