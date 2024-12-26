import java.util.*;
public class ArrRotate{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int[] nums = {0,1,2,4,5,6,7};
        int[] numsofk = new int[nums.length];
        int k = 3,target=0;

        for (int i = 0; i <= k; i++) {
            numsofk[i] = nums[k+i]; 
        }

        for (int i = 0; i < k; i++) {
            numsofk[k+i+1] = nums[i];
        }

        for (int i = 0; i < numsofk.length; i++) {
            System.out.print(numsofk[i] + " ");
        }
        for (int i = 0; i < numsofk.length; i++) {
            if (target == numsofk[i]) {
                System.out.println("\n"+i);
                break;
            }
        }
    }
}