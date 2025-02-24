import java.util.*;
public class InsertinSortedArr{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter limit: ");
        int n = s.nextInt();
        int[] arr = new int[n+1];

        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
            arr[i] = s.nextInt();
        }

        System.out.print("Enter val: ");
        int val = s.nextInt();
        
        for (int j = n-1; j >= 0; j--) {
            int tmp = arr[j];
            arr[j+1] = tmp;
            if (j == 0 && val < arr[j]) {
                arr[j] = val;
            }
            else if (val > arr[j]) {
                arr[j+1] = val;
                break;
            }
        }

        for(int b : arr){
            System.out.println(b);
        }

    }
}