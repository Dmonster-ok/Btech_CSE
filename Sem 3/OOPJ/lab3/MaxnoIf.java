import java.util.*;
public class MaxnoIf{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter a: ");
        int a = s.nextInt();
        System.out.print("Enter b: ");
        int b = s.nextInt();
        System.out.print("Enter c: ");
        int c = s.nextInt();
        int max = (a>b && a> c)?a:(b>c)?b:c;
        System.out.println("Maximum: " + max);
    }
}