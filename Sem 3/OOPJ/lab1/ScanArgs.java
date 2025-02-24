import java.util.*;
public class ScanArgs {
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Name: ");
        String n = s.next();
        System.out.println("Roll: ");
        int r = s.nextInt();
        System.out.println("CGPA: ");
        double c = s.nextDouble();
        System.out.println("\n"+ n + " " + r + " " + c);
    }
}