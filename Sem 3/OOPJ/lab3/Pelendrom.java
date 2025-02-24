import java.util.*;

public class Pelendrom {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number: ");
        int n = s.nextInt();

        int tmp = n,newn=0;
        while (tmp > 0) {
            newn = tmp *10;
            tmp /=10;
        }
        System.out.println(newn);
    }
}