import java.util.ArrayList;

public class MobilePhone {
    ArrayList<Contact> contacts = new ArrayList<>();
    private String myNumber;

    public MobilePhone(String myNumber) {
        this.myNumber = myNumber;
    }

    private int findContact(String name) {
        for (int i = 0; i < this.contacts.size(); i++)
            if (name.equals(contacts.get(i).getName())) {
                return i;
            }
        return -1;
    }

    private int findContact(Contact contact) {
        return this.contacts.indexOf(contact);
    }


    public boolean addContact(Contact contact) {
        if (findContact(contact) >= 0) {
            System.out.println("Contact is already on file.");
            return false;
        }
        contacts.add(contact);
        return true;
    }


    public boolean updateContact(Contact contact, Contact newContact) {
        int position = findContact(contact);
        if (position < 0) {
            System.out.println(contact.getName() + " was not found.");
            return false;
        } else if (findContact(newContact.getName()) != -1) {
            System.out.println("Could not update. Name " + newContact.getName() + " already exists.");
            return false;
        }

        contacts.set(position, newContact);
        System.out.println(contact.getName() + " was replaced with " + newContact.getName());
        return true;
    }

    public boolean removeContact(Contact contact) {
        int position = findContact(contact);

        if (position < 0) {
            System.out.println(contact.getName() + " was not found.");
            return false;
        }

        contacts.remove(position);
        System.out.println(contact.getName() + " was deleted.");
        return true;
    }

    public Contact queryContact(String name) {
        int position = findContact(name);
        if (position < 0) {
            return null;
        }
        return this.contacts.get(position);
    }

    public void printContacts() {
        System.out.println("Contact List");
        for (int i = 0; i < contacts.size(); i++)
            System.out.println((i + 1) + "." +
                    this.contacts.get(i).getName() + " -> " +
                    this.contacts.get(i).getPhoneNumber());
    }
}


