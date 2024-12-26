import java.util.*;
public class TempCtoF {

    static void ftoc(double f){
        System.out.println("Celsius: " + ((f-32)*5/9));
    }
    static void ctof(double c){
        System.out.println("Fahrenheit: " + ((c*9/5)+32));
    }
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter Temp Fahrenheit: ");
        ftoc(s.nextDouble());
        System.out.print("Enter Temp Celsius: ");
        ctof(s.nextDouble());
    }
}