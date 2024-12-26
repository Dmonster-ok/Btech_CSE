import java.util.*;
public class Vowel{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        char c = s.next().charAt(0);
        char[] vowels = {'a', 'e', 'i', 'o', 'u'};
        
        for (char vowel : vowels) {
            if (Character.toLowerCase(c) == vowel) {
                System.out.println("Vowel");
                return;
            }
        }
    }
}