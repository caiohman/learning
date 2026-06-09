package problemNine;

import java.util.Scanner;

public class Main {

    static Integer initializeClassVariable() throws Exception {
        Scanner scanner = new Scanner(System.in);

        Integer breadth = Integer.parseInt(scanner.nextLine());
        Integer height = Integer.parseInt(scanner.nextLine());

        if (breadth <= 0 || height <= 0) {
            throw new Exception("Breadth and height must be positive");
        }

        return breadth * height;
    }

    public static void main(String[] args) {
        try {
            System.out.println(Main.initializeClassVariable());
        } catch (Exception error) {
            System.out.println(error);
        }
    }
}
