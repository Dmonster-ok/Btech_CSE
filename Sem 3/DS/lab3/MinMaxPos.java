import java.util.*;

public class MinMaxPos {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        int min = 0, max = 0, p1 = 0, p2 = 0;

        System.out.println("Enter limit");
        int n = s.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter numbers");
        for (int i = 0; i < n; i++) {
        arr[i] = s.nextInt();
        }

        min = arr[0];

        for (int i = 0; i < n; i++) {
            if (min > arr[i]) {
                min = arr[i];
                p1 = i;
            }
            if (max < arr[i]) {
                max = arr[i];
                p2 = i;
            }

        }
        System.out.println("Smallest: " + p1);
        System.out.println("Largest: " + p2);
    }
}