import java.util.*;
public class CheckClass{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        float sum=0,n;

        System.out.println("Enter marks: ");
        for (int i = 0; i < 5; i++) {
            n = s.nextFloat();
            sum += n;
        }
        float obt = Math.abs(sum*100/500);
        
        if (obt > 60) {
            System.out.println("Frist Division");
        }else if (obt > 50){
            System.out.println("Second Division");
        }else if(obt > 40){
            System.out.println("Thired Division");
        }else{
            System.out.println("Fail");
        }
    }
}