import java.util.*;
public class PrimeRang{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter start: ");
        int a = s.nextInt();
        System.out.print("Enter end: ");
        int b = s.nextInt();
        PrimeRang ob = new PrimeRang();
        
        for (int n = a; n <= b; n++) {
            ob.prime(n);
        }
    }
    void prime(int n){
        for (int i = 2; i < n/2; i++) {
            if (n % i == 0) {
                return;
            }
        }
        System.out.print(n + " ");
    }
}