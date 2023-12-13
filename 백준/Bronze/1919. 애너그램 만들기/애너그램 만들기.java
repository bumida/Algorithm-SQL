import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.next();
        String str2 = sc.next();
        int[] countA = new int[26];
        int[] countB = new int[26];

        for (int i = 0; i < str.length(); i++)
            countA[str.charAt(i) - 'a']++;

        for (int i = 0; i < str2.length(); i++)
            countB[str2.charAt(i) - 'a']++;

        int ans = 0;
        for (int i = 0; i < 26; i++) {
            if (countA[i] > countB[i])
                ans += countA[i] - countB[i];
            else if (countB[i] > countA[i])
                ans += countB[i] - countA[i];

        }
        System.out.println(ans);
    }


}






