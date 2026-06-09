package problemTwenty;

import java.util.Scanner;

public class Main {

    static String isReverse(String string) {
        StringBuilder reverse = new StringBuilder(string);
        String newString = String.valueOf(reverse.reverse());
        return (newString.equals(string)) ? "Yes" : "No";
    }

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String A = sc.next();
        System.out.println(Main.isReverse(A));
    }
}
