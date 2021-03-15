package MyVersion;

public class DeluxeHamburger extends BaseHamburger {
    private int chips;
    private int drinks;

    public DeluxeHamburger(String name, String breadRollType, String meat, int chips, int drinks) {
        super("Deluxe Hamburger", breadRollType, meat);
        this.chips = chips;
        this.drinks = drinks;
    }


}
