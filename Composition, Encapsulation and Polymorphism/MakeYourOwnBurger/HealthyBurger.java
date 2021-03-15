package MyVersion;

public class HealthyBurger extends BaseHamburger {
    private int tomato;
    private int pickles;

    public HealthyBurger(String name, String breadRollType, String meat, int tomato, int pickles) {
        super("Healthy burger", "brown", "No meat");
        this.tomato = tomato;
        this.pickles = pickles;
    }

    @Override
    public double finalPrice(int cheese, int tomato, int pickles, int sauces) {
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
        return priceForBread+priceForMeat+(tomato*priceForTomato)+(pickles*priceForPickles)+super.finalPrice(cheese, tomato, pickles, sauces);
    }
}
