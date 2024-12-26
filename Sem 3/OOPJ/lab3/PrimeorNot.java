import java.util.*;
public class PrimeorNot{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number: ");
        int n = s.nextInt();
        PrimeorNot ob = new PrimeorNot();
        ob.prime(n);
    }
    void prime(int n){
        for (int i = 2; i < n/2; i++) {
            if (n % i == 0) {
                System.out.println(n + " is not prime");
                return;
            }
        }
        System.out.println(n + " is prime");
    }
}