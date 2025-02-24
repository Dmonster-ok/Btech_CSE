public class Armstrong {
    public static void main(String[] args) {

        for (int n = 0; n <= 1000; n++) {
            if (n < 10) {
                System.out.print(n + " ");
            } else {
                int c = 0, sum = 0;

                int tmp = n;
                while (tmp > 0) {
                    tmp /= 10;
                    c++;
                }

                tmp = n;
                for (int i = 0; i < c; i++) {
                    int tmp1 =tmp % 10;
                    tmp /= 10;
                    int f = 1;
                    for (int j = 0; j < c; j++) {
                        f *= tmp1;
                    }
                    sum += f;
                }
                if (sum == n) {
                    System.out.print(n + " ");
                }
            }
        }
    }
}