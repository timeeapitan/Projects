import java.util.ArrayList;

public class Branch {
    private String branchName;
    private ArrayList<Customer> customers;

    public Branch(String branchName) {
        this.branchName = branchName;
        this.customers = new ArrayList<>();
    }

    public boolean addNewCustomer(String name, double initialTransaction) {
        if(findCustomer(name) == null){
            customers.add(new Customer(name,initialTransaction));
            return true;
        }
        return false;
    }

    public boolean addAdditionalTransaction(String name, double amount) {
        Customer existingCustomer = findCustomer(name);

        if(existingCustomer != null){
            existingCustomer.addTransaction(amount);
            return true;
        }

        return false;
    }

    private Customer findCustomer(String name){
        for(int i=0; i<customers.size(); i++){
            Customer checkedCustomer = customers.get(i);
            if(checkedCustomer.getName().equals(name)){
                return customers.get(i);
            }
        }
        return null;
    }

    public String getName() {
        return branchName;
    }

    public ArrayList<Customer> getCustomers() {
        return customers;
    }
}
