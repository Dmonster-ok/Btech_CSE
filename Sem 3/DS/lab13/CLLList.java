// import java.util.*;
public class CLLList {

    public class Node {
        int data;
        Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    Node FIRST = null;
    Node LAST = null;

    public void insertAtFirst(int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            FIRST = newNode;
            newNode.next = FIRST;
            LAST = FIRST;
        } else {
            newNode.next = FIRST;
            LAST.next = newNode;
            FIRST = newNode;
        }
    }

    public void insertAtLast(int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            newNode.next = newNode;
            FIRST = newNode;
            LAST = newNode;
        } else {
            LAST.next = newNode;
            LAST = newNode;
            LAST.next = FIRST;
        }
    }

    public void insertAtPosition(int idx, int val) {
        Node newNode = new Node(val);
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        } else {
            int count = 0;
            Node suc = FIRST;
            Node pred = FIRST;

            if (idx == 0) {
                newNode.next = FIRST;
                LAST.next = newNode;
                FIRST = newNode;
                return;
            }
            do {
                pred = suc;
                suc = suc.next;
                count++;
            } while (suc != FIRST && count != idx);
            if (suc == LAST) {
                LAST.next = newNode;
                LAST = newNode;
                LAST.next = FIRST;
            } else {
                newNode.next = suc;
                pred.next = newNode;
            }
        }
    }

    public void deleteAtPosition(int idx){
        if (FIRST == null) {
            System.out.println("List is empty.");
            return;
        } else {
            int count = 0;
            Node suc = FIRST;
            Node pred = FIRST;

            if (idx == 0) {
                LAST.next = FIRST.next;
                FIRST = FIRST.next;
                return;
            }
            do {
                pred = suc;
                suc = suc.next;
                count++;
            } while (suc != FIRST && count != idx);
            if (suc == LAST) {
                pred.next = FIRST;
                LAST = pred;
            } else {
                pred.next = suc.next;
                suc = suc.next;
            }
        }
    }

    public void display() {
        Node tmp = FIRST;
        int c = 0;
        System.out.println();
        do {
            System.out.print(tmp.data + "->");
            tmp = tmp.next;
            c++;
        } while (tmp != FIRST);
        System.out.println(" FIRST: " + FIRST.data + "\nCount: " + c);
    }


    public static void main(String[] args) {
        CLLList list = new CLLList();
        list.insertAtFirst(4);
        list.insertAtFirst(3);
        list.insertAtFirst(2);
        list.insertAtFirst(1);
        list.insertAtPosition(1, 10);
        list.display();
        list.deleteAtPosition(2);
        list.display();
    }
}