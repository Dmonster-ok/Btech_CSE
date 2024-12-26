import java.util.*;
public class AdditionOfmat{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        
        int[][] a = new int[2][2];
        int[][] b = new int[2][2];
        int[][] c = new int[2][2];
        
        System.out.println("Enter matrix 1: ");
        for(int i=0;i<2;i++){
            for (int j = 0; j < 2; j++) {
                a[i][j] = s.nextInt();
            }
            System.out.println();
        }

        System.out.println("Enter matrix 2: ");
        for(int i=0;i<2;i++){
            for (int j = 0; j < 2; j++) {
                b[i][j] = s.nextInt();
            }
            System.out.println();
        }

        for(int i=0;i<2;i++){
            for (int j = 0; j < 2; j++) {
                c[i][j] = a[i][j] + b[i][j];
            }
        }

        System.out.println("Sum of matrix: ");
        for(int i=0;i<2;i++){
            for (int j = 0; j < 2; j++) {
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }

    }
}