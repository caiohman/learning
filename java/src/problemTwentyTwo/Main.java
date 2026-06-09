package problemTwentyTwo;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    static protected ArrayList<String> match(String text, String regex) throws Exception {
        try {
            ArrayList<String> matches = new ArrayList<>();
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(text);

            while(matcher.find()) {
                matches.add(matcher.group());
            }

            return matches;
        } catch (Exception error) {
            throw new Exception(error.getMessage());
        }
    }


    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine();
        scan.close();

        ArrayList<String> tokens = Main.match(s , "[A-Za-z]+");

        System.out.println(tokens.size());

        for (String token : tokens) {
            System.out.println(token);
        }
    }

}
