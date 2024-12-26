import java.util.*;
public class ReadNum{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        
        System.out.println("Enter limit");
        int n = s.nextInt();
        int[] arr = new int[n];
        
        
        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
            arr[i] = s.nextInt();
        }
        for(int val : arr){
            System.out.print(val + " ");
        }
    }
}