import java.util.*;
public class DeleteinSortedArr{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter limit: ");
        int n = s.nextInt();
        int[] arr = new int[n];
        boolean flag = false;

        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
            arr[i] = s.nextInt();
        }

        System.out.print("Enter val: ");
        int val = s.nextInt();
        for(int j=0; j < n-1; j++){
            if (val==arr[j]) {
                flag = true;
            }
            if (flag) {
                arr[j] = arr[j+1];
            }
        }

        for (int j = 0; j < n-1; j++) {
            System.out.print(arr[j] + " ");
        }
    }
}