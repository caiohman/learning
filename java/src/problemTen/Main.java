package problemTen;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String goodJob = "Good job";
        String wrongAnswer = "Wrong answer";

        try {
            Integer.parseInt(scanner.nextLine());
            System.out.println(goodJob);
        } catch (Exception error) {
            System.out.println(wrongAnswer);
        }
    }
}
