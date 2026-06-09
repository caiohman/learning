package problemFive;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> texts = new ArrayList<>();

        for (int i = 0; i < 3; i++) {
            texts.add(scanner.nextLine());
        }

        System.out.println("================================");

        for (String line: texts) {
            String[] separated = line.split(" ");
            System.out.printf("%-15s%03d\n", separated[0], Integer.parseInt(separated[1]));
        }

        System.out.println("================================");
    }
}
