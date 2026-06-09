package problemSeventeen;

class Singleton {

    public String str = "Hello Singleton";
    private static final Singleton instance;

    static {
        try {
            instance = new Singleton();
        } catch (Exception e) {
            throw new RuntimeException("Exception occurred in creating singleton instance");
        }
    }

    public static Singleton getSingleInstance() {
        return instance;
    }

    private Singleton() {}
}



public class Main {
    public static void main(String[] args) {
        Singleton singleton = Singleton.getSingleInstance();
        System.out.println(singleton.str);
    }
}
