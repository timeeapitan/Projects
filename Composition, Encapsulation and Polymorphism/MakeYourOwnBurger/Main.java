package MyVersion;

public class Main {
    public static void main(String[] args) {
        BaseHamburger baseHamburger=new BaseHamburger("Basic", "white","medium cooked");
        double price=baseHamburger.finalPrice(2,3,0,0);
        System.out.println(price);

    }
}
