import java.util.*;
public class SumofPattern{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter limt: ");
        int n = s.nextInt();
        int sum = 0;

        for (int i=1; i <= n; i++ ){
            sum += i*(i+1)/2;
        }

        System.out.println(sum);

    }
}