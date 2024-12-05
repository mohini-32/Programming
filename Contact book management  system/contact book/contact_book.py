from storage import save_contacts, load_contacts  
def add_contact(name, email, phone_number, address):
    
    contacts = load_contacts()
    contact = {
        'name': name,
        'email': email,
        'phone_number': phone_number,
        'address': address,
        'status': 'Pending'
    }
    contacts.append(contact)
    save_contacts(contacts)


def view_contacts():

    contacts = load_contacts()
    print("\nContacts list: \n")
    for i, contact in enumerate (contacts, start = 1):
        print( f"{i}. Name: {contact['name']}, Email: {contact['email']}, Phone Number: {contact['phone_number']}, Address: {contact['address']}")



def remove_contact(index):

    contacts = load_contacts()
    if 0<index<=len(contacts):
        del contacts[index-1]
        save_contacts(contacts)
    else:
        print("Invalid index")


def search_contact(query):

    contacts = load_contacts()
    results = []
    for contact in contacts:
        if query.lower() in contact['name'].lower() or query in contact['email'].lower():
           results.append(contact)
        print("\nSearch Result: \n")
        for i, contact in enumerate (results, start = 1):
         print( f"{i}. Name: {contact['name']}, Email: {contact['email']}, Phone Number: {contact['phone_number']}, Address: {contact['address']}")


def update_contact(index):
     
    contacts =  load_contacts()
    if 0<index<=len(contacts):
        contacts[index-1]['status'] = "Completed"
        save_contacts(contacts)
        
    else:
        print("Invalid index")
