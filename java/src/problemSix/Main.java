package problemSix;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<ArrayList<Integer>> values = new ArrayList<>();

        int numberOfQueries = Integer.parseInt(scanner.nextLine());

        for (int i = 0; i < numberOfQueries; i++) {
            String[] line = scanner.nextLine().split(" ");
            int a = Integer.parseInt(line[0]);
            int b = Integer.parseInt(line[1]);
            int n = Integer.parseInt(line[2]);

            ArrayList<Integer> results = new ArrayList<Integer>();
            int result = a;

            for (int j = 0; j < n; j++) {
                result += (int) (Math.pow(2, j) * b);
                results.add(result);
            }
            values.add(results);
        }

        values.forEach(line -> {
                    line.forEach(value -> System.out.printf("%d ", value));
                    System.out.println();
                }

        );
    }
}
