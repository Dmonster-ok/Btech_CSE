import java.util.*;
public class Swap{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        
        System.out.print("Enter a: ");
        int a = s.nextInt();

        System.out.print("Enter b: ");
        int b = s.nextInt();

        swapValue(a, b);
    }
    
    static void swapValue(int a, int b){
        int temp = a;
        a=b;
        b=temp;
        System.out.println("a: "+a+", b: "+b);
        return;
    }
}