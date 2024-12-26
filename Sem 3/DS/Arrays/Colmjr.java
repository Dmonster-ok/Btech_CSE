import java.util.*;
public class Colmjr{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int[][] arr = new int[2][3];

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                arr[i][j] = s.nextInt();
            }
        }

        System.out.println("The matrix is: ");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(arr[i][j] + " ");
            }
            System.out.println();
        }
    }
}