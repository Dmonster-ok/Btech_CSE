import java.util.*;

public class NumofEleEq {

    static int max(int[] arr) {
        int max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }

    static void check(int[] arr) {
        int n = arr.length;
        int k = max(arr) + 1;
        int[] tmp = new int[k];

        for (int i = 0; i < n; i++) {
            tmp[arr[i]] += 1;
        }

        for (int i = 0; i< k - 1; i++){
            if (tmp[i] != tmp[i+1]) {
                System.out.println("Number of elements are not equal");
                return;
            }
        }
        System.out.println("Number of elements are equal");
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        // System.out.print("Enter the number of elements: ");
        // int n = s.nextInt();
        // if (n%2 != 0){
        // throw new Error("Number of elements are not equal");
        // }

        // int[] arr = new int[n];

        // System.out.println("Enter the elements: ");
        // for (int i = 0; i < n; i++){
        // arr[i] = s.nextInt();
        // }
        int[] arr = { 0, 1, 1, 2, 1, 2 };
        check(arr);
    }
}