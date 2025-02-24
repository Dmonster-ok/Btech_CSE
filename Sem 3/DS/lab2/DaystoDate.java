import java.util.*;
public class DaystoDate{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter Days: ");
        int d = s.nextInt();
        int y = d / 365;
        d %= 365;
        int w = d/7;
        d %= 7;

        System.out.println(y + " Year(s) " + w + " Week(s) " + d + " Day(s)");
    }
}