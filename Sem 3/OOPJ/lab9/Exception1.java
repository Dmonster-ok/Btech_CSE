import java.util.*;

public class Exception1 {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        try {
            System.out.println("10/0" + (10 / 0));
        } catch (ArithmeticException e) {
            e.printStackTrace();
        }
        try {
            int[] a = { 1, 2, 3 };
            System.out.println(a[4]);
        } catch (IndexOutOfBoundsException e) {
            System.out.println();
            e.printStackTrace();
        }
    }
}