package problemEight;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicInteger;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> lines = new ArrayList<>();
        AtomicInteger count = new AtomicInteger(1);

        while (scanner.hasNextLine()) {
            lines.add(scanner.nextLine());
        }

        lines.forEach(line -> System.out.println(count.getAndIncrement() + " " + line));
    }
}
