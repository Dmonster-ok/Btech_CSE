import java.util.*;
public class MeterToFeet {
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Meter: ");
        int meter = s.nextInt();
        double feet = meter * 3.28084;
        System.out.println("Feet: " + feet);
    }
}