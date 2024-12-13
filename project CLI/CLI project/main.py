lend_books = []

while True:
    print("Library Management CLI Project")
    print("0. Exit")
    print("1. Add Lend book")
    print("2. Returns the book")
    print("3. Remove their lend")
    print("4. View lend book")

    choice = input("Enter an option: ")
    
    if choice == "0":
        print("Thanks for using Library Management CLI Project")
        break


    elif choice == "1":
        book = input("Enter Add book which book you borrow: ")
        lend_books.append(book)
        print("Borrow Book Added successfully")


    elif choice == "2":
        book = input("Enter a book which you want to Return: ")
        print("Book return successfully")
    
    elif choice == "3":
        book = input("Enter lend book which you remove: ")
        lend_books.append(book)
        print("Book remove successfully")

   
    elif choice == "4":
        if lend_books:
            print("Your lend book")
            for index,book in enumerate(lend_books,start=1):
                print(f"{index}.{book}")
            else:
                print("lend book is show")

        else:
           print("There are not enough books available to lend")