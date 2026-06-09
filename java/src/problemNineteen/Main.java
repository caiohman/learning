package problemNineteen;

import java.util.Scanner;

public class Main {

    public static String getSmallestAndLargest(String s, int k) {
        int firstIndex = 0, lastIndex = k;
        String smallest = s.substring(firstIndex, lastIndex);
        String largest = s.substring(firstIndex, lastIndex);

        while (s.length() > lastIndex) {
            firstIndex += 1;
            lastIndex += 1;

            String newSmallest = s.substring(firstIndex, lastIndex);
            String newLargest = s.substring(firstIndex, lastIndex);

            if (newSmallest.compareTo(smallest) < 0) {
                smallest = newSmallest;
                continue;
            }

            if (newLargest.compareTo(largest) > 0) {
                largest = newLargest;
            }
        }

        // Complete the function
        // 'smallest' must be the lexicographically smallest substring of length 'k'
        // 'largest' must be the lexicographically largest substring of length 'k'

        return smallest + "\n" + largest;
    }


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String word = scanner.nextLine();
        Integer lastIndex = Integer.parseInt(scanner.nextLine());

        System.out.println(getSmallestAndLargest(word, lastIndex));

    }
}
