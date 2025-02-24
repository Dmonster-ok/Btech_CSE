class Node {
    int data;
    Node left, right;

    public Node(int item) {
        data = item;
        left = right = null;
    }
}

public class Traversal {

    static void preorder(Node node) {
        // Base case
        if (node == null)
            return;

        // Visit the current node
        System.out.print(node.data + " ");
        // Recur on the left subtree
        preorder(node.left);
        // Recur on the right subtree
        preorder(node.right);
    }

    static void postorder(Node node) {
        // Base case
        if (node == null)
            return;
        // Recur on the left subtree
        postorder(node.left);
        // Recur on the right subtree
        postorder(node.right);
        // Visit the current node
        System.out.print(node.data + " ");
    }

    static void inorder(Node node) {
        // Base case
        if (node == null)
            return;
        // Recur on the left subtree
        inorder(node.left);
        // Visit the current node
        System.out.print(node.data + " ");
        // Recur on the right subtree
        inorder(node.right);
    }

    // static void printTree(Node node, String prefix, boolean isLeft) {
    //     if (node != null) {
    //         System.out.println(prefix + (isLeft ? "├── " : "└── ") + node.data);
    //         printTree(node.left, prefix + (isLeft ? "│   " : "    "), true);
    //         printTree(node.right, prefix + (isLeft ? "│   " : "    "), false);
    //     }
    // }
    public static void main(String[] args) {
        Node root = new Node(15);
        root.left = new Node(3);
        root.right = new Node(1);
        root.left.right = new Node(6);
        root.right.right = new Node(22);
        root.left.right.left = new Node(5);
        root.right.right.right = new Node(45);
        root.right.right.right.left = new Node(23);
        root.right.right.right.right = new Node(65);
        root.right.right.right.left.right = new Node(34);
        root.right.right.right.right.right = new Node(78);
        

        
        System.out.print("Preorder \t:\t");
        preorder(root);
        System.out.print("\nInorder \t:\t");
        inorder(root);
        System.out.print("\nPostorder \t:\t");
        postorder(root);
    }
}