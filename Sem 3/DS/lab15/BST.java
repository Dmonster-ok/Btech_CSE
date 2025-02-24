class Tree{
    static class Node{
        Node l;
        int data;
        Node r;

        Node(int key){
            this.l = this.r = null;
            this.data = key;
        }
    }
    Node root = null;

    static void insertNode(Node root, int key){
        if (root == null) {
            root = new Node(key);
        }
        if (root.data ==  key) {
            System.out.println("douplicate key found.");
        }

        if (root.data > key) {
            insertNode(root.l, key);
        } else {
            insertNode(root.r, key);
        }
    }

    static void preorder(Node node) {
        // Base case
        if (node == null)
            return;

        // Visit the current node
        System.out.print(node.data + " ");
        // Recur on the l subtree
        preorder(node.l);
        // Recur on the r subtree
        preorder(node.r);
    }

    static void postorder(Node node) {
        // Base case
        if (node == null)
            return;
        // Recur on the l subtree
        postorder(node.l);
        // Recur on the r subtree
        postorder(node.r);
        // Visit the current node
        System.out.print(node.data + " ");
    }

    static void inorder(Node node) {
        // Base case
        if (node == null)
            return;
        // Recur on the l subtree
        inorder(node.l);
        // Visit the current node
        System.out.print(node.data + " ");
        // Recur on the r subtree
        inorder(node.r);
    }
}

public class BST {
    public static void main(String[] args) {
        
    }
}
