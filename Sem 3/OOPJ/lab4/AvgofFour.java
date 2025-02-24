import java.util.*;
public class AvgofFour{
    static void avg(int arr[]){
        double sum = 0;
        for (int i = 0; i < arr.length; i++) {
            sum+=arr[i];
        }
        System.out.println("Average: " + (sum/arr.length));
    }
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int arr[] = new int[4];        

        System.out.println("Enter numbers:");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = s.nextInt();
        }

        avg(arr);
    }
}