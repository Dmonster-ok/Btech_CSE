import java.util.*;
public class SecondhalfodStr{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter a String: ");
        String str = s.nextLine();
        int len = str.length();
        
        System.out.println("Length of "+str+": "+len);
        System.out.println("Second half: "+ str.substring(len/2,len));
    }
}