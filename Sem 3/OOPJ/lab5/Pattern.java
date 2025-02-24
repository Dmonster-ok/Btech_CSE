import java.util.*;

public class Pattern {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        // int n = s.nextInt();
        int n = 5;

        // p1
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p2
        for (int i = 0; i < n; i++) {
            for (int j = n - 1; j > i; j--) {
                System.out.print("  ");
            }
            for (int j = 0; j < i + 1; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p3
        for (int i = 0; i < n; i++) {
            for (int j = n; j > i; j--) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p4
        int c = 1;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < i + 1; j++) {
                System.out.print(c + " ");
                c++;
            }
            System.out.println();
        }

        // p5
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < i; j++) {
                System.out.print("  ");
            }
            for (int j = n; j > i; j--) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p6
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < i + 1; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p7
        String str = "String";
        n = str.length();

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < i + 1; j++) {
                System.out.print(str.charAt(j) + " ");
            }
            System.out.println();
        }

        n = 3;
        // p8
        for (int i = 0; i < n; i++) {
            for (int j = n - 1; j > i; j--) {
                System.out.print("  ");
            }
            for (int j = 0; j < (2 * i + 1); j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
        for (int i = n - 2; i >= 0; i--) {
            for (int j = n - 1; j > i; j--) {
                System.out.print("  ");
            }
            for (int j = 0; j < (2 * i + 1); j++) {
                System.out.print("* ");
            }
            System.out.println();
        }

        // p9
        for (int i = 0; i < n; i++) {
            for (int j = 0 ; j < i; j++) {
                System.out.print("  ");
            }
            for (int j = (2 * i + 1); j > 0; j--) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}