import java.util.*;

public class VowelCounter {

    static int checkVowel(String str) {
        int count = 0;
        char[] vowels = { 'a', 'e', 'i', 'o', 'u' };

        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            for (char vowel : vowels) {
                if (Character.toLowerCase(c) == vowel) {
                    count++;
                }
            }
        }
        return count;
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter sentence: ");
        String str = s.next();
        int count = 0;

        while (!str.equals("quit")) {
            count += checkVowel(str);
            System.out.println(count);
            System.out.print("Enter sentence('quit' to exit): ");
            str = s.next();
        }
        System.out.println("Total vowels: " + count);
    }
}