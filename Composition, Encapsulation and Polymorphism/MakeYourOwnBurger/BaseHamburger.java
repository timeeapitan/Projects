package MyVersion;

public class BaseHamburger {
    private String name;
    private String breadRollType;
    private String meat;
    private int cheese;
    private int tomato;
    private int pickles;
    private int sauces;

    public BaseHamburger(String name, String breadRollType, String meat) {
        this.name = name;
        this.breadRollType = breadRollType;
        this.meat = meat;
    }

    public double finalPrice(int cheese, int tomato, int pickles, int sauces){
        int priceForBread=3;
        int priceForMeat=4;
        double priceForCheese=3.5;
        double priceForTomato=2.5;
        double priceForPickles=1.5;
        double priceForSauces=1.75;
        if(tomato>0){
            System.out.println("Tomatoes added: "+tomato+". Total price for the tomatoes: "+(tomato*priceForTomato));
        }
        if(cheese>0){
            System.out.println("Cheese added: "+cheese+". Total price for cheese: "+(cheese*priceForCheese));
        }

        if(pickles>0){
            System.out.println("Pickles added: "+pickles+". Total price for pickles: "+(pickles*priceForPickles));
        }

        if(sauces>0){
            System.out.println("Sauces added: "+sauces+". Total price for sauces: "+(sauces*priceForSauces));
        }
        return priceForBread+priceForMeat+(cheese*priceForCheese)+(tomato*priceForTomato)+
                (pickles*priceForPickles)+(sauces*priceForSauces);
    }
}
