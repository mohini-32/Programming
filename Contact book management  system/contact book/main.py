from contact_book import add_contact,view_contacts, remove_contact, search_contact, update_contact
from storage import save_contacts, load_contacts  

while True:
    print("\n\nWelcome to contact book management system: ")
    print("1. Add contact")
    print("2. View contacts")
    print("3. remove contact")
    print("4. search contact")
    print("5. update contact")
    print("6. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        name = input("Enter contact name: ")
        email = input("Enter contact email: ")
        phone_number = input("Enter contact phone_number: ")
        
        # check duplicate numbers
        contacts = load_contacts()
        for contact in contacts:
            if contact.get('phone') == phone_number:
                print("A contact phone number already exists.")
                

        address = input("Enter contact address: ")

        add_contact(name, email, phone_number, address)
        print("Contact added successfully")


    elif choice == "2":
        view_contacts()

    elif choice == "3":
        index = int(input("Enter the index of the contact to remove: "))
        remove_contact(index)
        print("Contact remove successfully! ")


    elif choice == "4":
        query = input("Enter the search query: ")
        search_contact(query)

    
    elif choice == "5":
      index = int(input("Enter the index of the contact to update: "))       
      update_contact(index)
      print("Contact updated successfully!")
       # print(update_contact)
 
      
    elif choice == "6":
       break
print("Exiting Contact Book")



 