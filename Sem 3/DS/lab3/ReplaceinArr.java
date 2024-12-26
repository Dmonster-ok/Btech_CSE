import java.util.*;
public class ReplaceinArr{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter limit");
        int n = s.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter numbers");
        for(int i = 0; i < n; i++){
            arr[i] = s.nextInt();
        }

        System.out.println("Enter Match: ");
        int a = s.nextInt();
        
        System.out.println("Enter Replace: ");
        int b = s.nextInt();
        
        for (int i = 0; i < n; i++) {
            if (arr[i] == a) {
                arr[i] = b;
            }
        }

        for (int i = 0; i < n; i++) {
            System.out.print(arr[i]+" ");
        }
    }
}