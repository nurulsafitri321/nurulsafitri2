// // 1. Sebuah toko buku ingin mengembangkan sebuah sistem untuk mengelola data buku. 
//       Data buku tersebut terdiri dari ID, judul, penerbit, harga dan kategori. 
//       Sistem tersebut dapat menambahkan, mendapatkan semua data buku dan menghapus data buku. 
//       Buatlah program berdasarkan skenario tersebut.


import 'dart:io';

class Book {
  final String id;
  final String title;
  final String publisher;
  final double price;
  final String category;

  Book(this.id, this.title, this.publisher, this.price, this.category);
}

class Bookstore {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Book added successfully!");
  }

  List<Book> getAllBooks() {
    return books;
  }

  void deleteBook(String bookId) {
    books.removeWhere((book) => book.id == bookId);
    print("Book deleted successfully!");
  }
}

void main() {
  var bookstore = Bookstore();

  while (true) {
    print("\nMenu:");
    print("1. Add Book");
    print("2. Get All Books");
    print("3. Delete Book");
    print("4. Exit");

    var choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter Book ID: ");
      var bookId = stdin.readLineSync()!;
      print("Enter Title: ");
      var title = stdin.readLineSync()!;
      print("Enter Publisher: ");
      var publisher = stdin.readLineSync()!;
      print("Enter Price: ");
      var price = double.parse(stdin.readLineSync()!);
      print("Enter Category: ");
      var category = stdin.readLineSync()!;

      var newBook = Book(bookId, title, publisher, price, category);
      bookstore.addBook(newBook);
    } else if (choice == 2) {
      var books = bookstore.getAllBooks();
      if (books.isEmpty) {
        print("No books available.");
      } else {
        print("List of books:");
        for (var book in books) {
          print(
              "ID: ${book.id}, Title: ${book.title}, Publisher: ${book.publisher}, Price: ${book.price}, Category: ${book.category}");
        }
      }
    } else if (choice == 3) {
      print("Enter Book ID to delete: ");
      var bookIdToDelete = stdin.readLineSync()!;
      bookstore.deleteBook(bookIdToDelete);
    } else if (choice == 4) {
      print("Exiting the program.");
      break;
    } else {
      print("Invalid choice. Please choose a valid option.");
    }
  }
}
