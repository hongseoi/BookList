import 'package:flutter_book_list/models/book.dart';

class BookRepo{
  final List<Book> _dummyBooks = [
    Book(
      title: "",
      subtitle: "",
      description: "",
      image: "",
    ),
    Book(
      title: "",
      subtitle: "",
      description: "",
      image: "",
    ),
    Book(
      title: "",
      subtitle: "",
      description: "",
      image: "",
    ),
  ];

  List<Book> getBooks(){
    return _dummyBooks;
  }
}