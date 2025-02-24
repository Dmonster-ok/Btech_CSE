import java.util.*;
public class SectoTime{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.println("Enter Seconds: ");
        int sec = s.nextInt();

        int h = sec / 3600;
        sec %= 3600;
        int m = sec / 60;
        sec %= 60;
        
        System.out.println(h + ":" + m + ":" + sec);
    }
}