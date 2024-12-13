from save_all_books import save_all_books

def update(all_books,Title):
    for i,book in enumerate(all_books):
        if Title.lower() == book['title'].lower():
            author = input("Enter Update_Author Name: ")
            isbn = int(input("Enter Update_ISBN Number: "))
            year = int(input("Enter Update_Publishing Year Number: "))
            price =  int(input("Enter Update_Book Price: "))
            quantity = int(input("Enter Update_Quantity Number: "))

            book = {
                "title": Title,
                "author": author,
                "isbn": isbn,
                "year": year,
                "price": price,
                "quantity": quantity
            }


            all_books[i]=book
            save_all_books(all_books)
            
            print("Books Update_successfully")
            break



                
            
            