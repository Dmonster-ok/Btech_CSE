import java.util.*;
public class CountConsoVowel{
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        System.out.print("Enter a String: ");
        String str = s.nextLine();
        int cofVoewl = 0;
        
        for (int i = 0; i < str.length(); i++) {
            if ('a' == str.charAt(i) || 'e' == str.charAt(i) || 'i' == str.charAt(i) || 'o' == str.charAt(i) || 'u' == str.charAt(i)) {
                cofVoewl++;
            }
        }
        System.out.println("Number of Vowels: "+cofVoewl+"\nNumber of Consonants: "+(str.length()-cofVoewl));
    }
}