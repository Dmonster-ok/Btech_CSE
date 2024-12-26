import java.util.*;
public class SumofMN{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter m");
        int m = s.nextInt();
        System.out.println("Enter n");
        int n = s.nextInt();
        int sum = 0;

        for(int i = m; i <= n; i++){
            sum += i;
        }

        System.out.println("sum of m"+"n = " + sum);
    }
}