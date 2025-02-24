import java.util.Scanner;

class OutofRange extends Exception {
    OutofRange(int n) {
        super(n + " is not in between 10 and 50.");
    }
}

public class OutOfRangeExp {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        try {
            int n;
            System.out.print("Enter number: ");
            n = s.nextInt();

            if (n < 10 || n > 50) {
                throw new OutofRange(n);
            } else {
                System.out.println("Square: " + (n * n));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}