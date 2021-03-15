package MyChallenge;

import java.util.ArrayList;

public class Sports implements Saveable {

    private ArrayList<String> sports;

    public Sports() {
        sports = new ArrayList<String>();
    }

    @Override
    public ArrayList returnArrayList() {
        return sports;
    }

    @Override
    public void populateObject(ArrayList sports) {
        this.sports = sports;
    }

    @Override
    public String toString() {
        return "Sports = {" + sports +
                '}';
    }
}
