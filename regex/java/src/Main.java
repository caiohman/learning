import java.util.ArrayList;
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

        String ok = "Understand? OK or NOT";
        String okRegex = "OK";
        System.out.println(Main.match(ok, okRegex));

        String pdf = "readme.md " +
                "document.pdf " +
                "image.png " +
                "music.mp4 " +
                "manual.pdf";
        String pdfRegex = "\\w+\\.pdf";
        System.out.println(Main.match(pdf, pdfRegex));

        String anyChar = "abcABC123 .:!?";
        String anyCharRegex = ".";
        System.out.println(Main.match(anyChar, anyCharRegex));

        String bar = "bar ber bir bor bur";
        String barRegex = "b[aeiou]r";
        System.out.println(Main.match(bar, barRegex));

        String numbers = "0123456789";
        String numbersRegex = "[3-6]";
        System.out.println(Main.match(numbers, numbersRegex));

        String negateSpecificWord = "bear beor beer beur";
        String negateSpecificWordRegex = "be[^ou]r";
        System.out.println(Main.match(negateSpecificWord, negateSpecificWordRegex));


    }
}