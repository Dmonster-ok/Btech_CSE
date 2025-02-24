import java.util.*;
public class OppPrecedence{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("a: "+(10 + 20 * 30));
        System.out.println("b: "+(100 / 10 * 100));
        System.out.println("c: "+(5 * 4 / 4 % 3));
        System.out.println("d: "+(100 + 200 / 10 - 3 * 10));
    }
}