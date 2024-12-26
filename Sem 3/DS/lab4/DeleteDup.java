import java.util.*;

public class DeleteDup {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Enter limit");
        int n = s.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
        arr[i] = s.nextInt();
        }
        
        for (int i = 0; i < n; i++) {
            for (int j = i+1; j < n; j++) {
                if (arr[i] > arr[j]) {
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }

        int[] temp = new int[n];
        int k = 0;
        for (int i = 0; i < n-1; i++) {
            if (arr[i] != arr[i+1]) {
                temp[k] = arr[i];
                k++;
            }
        }
        temp[k] = arr[n - 1];

        for (int i = 0; i <= k; i++) {
            System.out.print(temp[i] + " ");
        }
    }
}