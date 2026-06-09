package problemTwentyThree;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Pattern;

public class Main {

    static protected boolean match(String regex) {
        try {
            Pattern pattern = Pattern.compile(regex);
            return true;
        } catch (Exception error) {
            return false;
        }
    }


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int numberOfTests = Integer.parseInt(scan.nextLine());
        ArrayList<String> regex = new ArrayList<>();

        for (int i = 0; i < numberOfTests; i++) {
            regex.add(scan.nextLine());
        }

        regex.forEach(reg -> System.out.println(Main.match(reg) ? "Valid" : "Invalid"));

        scan.close();
    }
}
