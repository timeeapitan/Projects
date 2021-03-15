package Challenge;

public abstract class ListItem {
    protected ListItem rightLink = null;
    protected ListItem leftLink = null;

    protected Object value;

    public ListItem(Object value) {
        this.value = value;
    }

    abstract ListItem next(); // moves to the next item
    abstract ListItem setNext(ListItem item); // sets the next item
    abstract ListItem previous(); // moves to the previous item
    abstract ListItem setPrevious(ListItem item); // sets the previous item

    abstract int compareTo(ListItem item);

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }
}
