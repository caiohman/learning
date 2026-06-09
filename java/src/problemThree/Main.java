package problemThree;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

        int n = Integer.parseInt(bufferedReader.readLine().trim());

        bufferedReader.close();
        String weird = "Weird";
        String not = "Not ";

        if (n % 2 != 0) {
            System.out.println(weird);
        } else {
            if (n > 20) {
                System.out.println(not + weird);
                return;
            }
            if (n >= 2 && n <= 5) {
                System.out.println(not + weird);
                return;
            }
            if (n >= 6) {
                System.out.println(weird);
                return;
            }
        }
    }
}
