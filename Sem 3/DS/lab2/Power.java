import java.util.*;
public class Power{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int n = 1;
        int base = s.nextInt();
        int pow = s.nextInt();

        for (int i = 1; i <= pow; i++) {
            n *= base;
        }

        System.out.println("Power: " + n );
    }
}