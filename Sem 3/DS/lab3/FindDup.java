import java.util.*;
public class FindDup{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter limit");
        int n = s.nextInt();
        int[] arr = new int[n];
        boolean flag = false;
        
        
        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
            arr[i] = s.nextInt();
        }

        for(int i = 0; i < n; i++){
            for (int j = i+1; j < n; j++) {
               if (arr[i] == arr[j]) {
                   System.out.println("Duplicate exsits");
                   flag = true;
                   break;
               }
            }
            if (flag) {
                break;
            }
        }
        if (!flag) {
            System.out.println("Duplicate does not exsists");
        }
    }
}