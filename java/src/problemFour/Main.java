package problemFour;

import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        scanner.useLocale(Locale.US);

        Integer number = scanner.nextInt();
        Double numberDouble = scanner.nextDouble();
        scanner.nextLine();
        String text = scanner.nextLine();

        System.out.println("String: " + text);
        System.out.println("Double: " + numberDouble);
        System.out.println("Int: " + number);

    }
}
