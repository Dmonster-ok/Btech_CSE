import java.util.*;
public class ArrinRevOrd{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter size of array: ");
        int n = s.nextInt();
        int arr[] = new int[n];

        System.out.println("Enter numbers: ");
        for (int i = 0; i < n; i++) {
            arr[i] = s.nextInt();
        }

        //array in reverse
        for (int i = n - 1; i >= 0; i--) {
            System.out.print(arr[i]+" ");
        }
    }
}