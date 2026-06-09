package problemSeven;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> list = new ArrayList<>();
        String dataTypeNotFound = " can't be fitted anywhere.";
        String dataTypeFound = " can be fitted in:";

        int testCases = Integer.parseInt(scanner.nextLine());

        for (int i = 0; i < testCases; i++) {
            list.add(scanner.nextLine());
        }

        list.forEach(number -> {
            try {
                Long.parseLong(number);

                System.out.println(number + dataTypeFound);

                try {
                    Byte.parseByte(number);
                    System.out.println("* byte");
                } catch (NumberFormatException ignored) {
                }

                try {
                    Short.parseShort(number);
                    System.out.println("* short");
                } catch (NumberFormatException ignored) {
                }

                try {
                    Integer.parseInt(number);
                    System.out.println("* int");
                } catch (NumberFormatException ignored) {
                }

                System.out.println("* long");
            } catch (NumberFormatException error) {
                System.out.println(number + dataTypeNotFound);
            }
        });
    }
}
