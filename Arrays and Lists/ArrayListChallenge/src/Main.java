import java.util.Scanner;

public class Main {
    public static Scanner scanner = new Scanner(System.in);
    private static MobilePhone mobilePhone = new MobilePhone("0753905177");

    public static void main(String[] args) {
        boolean quit = false;
        startPhone();
        printActions();

        while (!quit) {
            System.out.println("\nEnter action: (6 to show available actions)");
            int action = scanner.nextInt();
            scanner.nextLine();

            switch (action) {
                case 0:
                    System.out.println("\nShutting down...");
                    quit = true;
                case 1:
                    mobilePhone.printContacts();
                    break;
                case 2:
                    addNewContact();
                    break;
                case 3:
                    updateContact();
                    break;
                case 4:
                    removeContact();
                    break;
                case 5:
                    queryContact();
                    break;
                case 6:
                    printActions();
                    break;
            }
        }

    }

    private static void addNewContact() {
        System.out.println("Enter a new contact name: ");
        String name = scanner.nextLine();
        System.out.println("Enter phone number: ");
        String phoneNumber = scanner.nextLine();
        Contact newContact = Contact.createContact(name, phoneNumber);

        if (mobilePhone.addContact(newContact)) {
            System.out.println("New contact added: " + name + ", phone = " + phoneNumber);
        } else {
            System.out.println("Cannot add, " + name + " is already on file");
        }
    }

    private static void updateContact() {
        System.out.println("Enter existing contact name: ");
        String name = scanner.nextLine();
        Contact existingContactRecord = mobilePhone.queryContact(name);

        if (existingContactRecord == null) {
            System.out.println("Contact not found.");
            return;
        } else {
            System.out.print("Enter new contact name: ");
            String newName = scanner.nextLine();
            System.out.println("Enter new contact phone number: ");
            String newNumber = scanner.nextLine();
            Contact newContact = Contact.createContact(newName, newNumber);
            if (mobilePhone.updateContact(existingContactRecord, newContact)) {
                System.out.println("Successfully update record!");
            } else {
                System.out.println("Error updating record.");
            }
        }
    }

    private static void removeContact() {
        System.out.println("Enter a contact name: ");
        String name = scanner.nextLine();
        Contact existingContact = mobilePhone.queryContact(name);

        if (existingContact == null) {
            System.out.println("Contact not found.");
            return;
        }

        if (mobilePhone.removeContact(existingContact)) {
            System.out.println("Successfully deleted.");
        } else {
            System.out.println("Error deleting contact.");
        }
    }

    private static void queryContact() {
        System.out.println("Enter existing contact name: ");
        String name = scanner.nextLine();
        Contact existingContact = mobilePhone.queryContact(name);

        if (existingContact == null) {
            System.out.println("Contact not found.");
            return;
        }
        System.out.println("Name: " + existingContact.getName() + ", phone number: " + existingContact.getPhoneNumber());
    }

    private static void startPhone() {
        System.out.println("Starting phone...");
    }

    private static void printActions() {
        System.out.println("\nAvailable actions:\npress");
        System.out.println("0 - to shutdown\n" +
                "1 - to print contacts\n" +
                "2 - to add a new contact\n" +
                "3 - to update an existing contact\n" +
                "4 - to remove an existing contact\n" +
                "5 - to query if an existing contact exists\n" + //search for an existing contact
                "6 - to print a list of available actions.");
        System.out.println("Choose your action: ");
    }
}
