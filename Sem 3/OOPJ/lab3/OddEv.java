import java.util.*;
public class OddEv{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter number: ");
        int n = s.nextInt();
        OddEv ob = new OddEv();
        ob.oddEven(n);
    }
    void oddEven(int n){
        if (n % 2 == 0) {
            System.out.println("Even");
        }else{
            System.out.println("Odd");
        }
    }
}