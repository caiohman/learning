package problemTwo;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        ArrayList<Integer> numbers = new ArrayList<>();

        for (int i = 0; i < 3; i++){
            numbers.add(scanner.nextInt());
        }

        numbers.forEach(System.out::println);
    }
}
