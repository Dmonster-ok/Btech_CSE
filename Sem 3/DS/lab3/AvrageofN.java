import java.util.*;
public class AvrageofN{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int sum = 0;
        
        System.out.println("Enter limit");
        int n = s.nextInt();
        
        for(int i = 1; i <= n; i++){
            sum += i;
        }
        
        System.out.println("Avrage: "+ (sum/n));
        
    }
}