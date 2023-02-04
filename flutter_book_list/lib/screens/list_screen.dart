import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_book_list/repositories/book_repo.dart';
import 'package:flutter_book_list/screens/detailed_screen.dart';
import 'package:flutter_book_list/models/book.dart';

class ListScreen extends StatelessWidget{
  final List<Book> boos = BookRepo().getBooks();
  @override
  Widget build(BuildContext context) {
    var books;
    return Scaffold(
      appBar: AppBar(
        title: const Text("도서목록앱"),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index){
          return BookTile(book: books[index]);
        }
      )
      
    );
  }
}

class BookTile extends StatelessWidget{

  final Book book;

  BookTile({
    required this.book
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap:(){
        //화면이동 코드
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailedScreen(
            //detailed screen에 아래의 변수 전달
            book: book,
          ),)
        );
      });
  }
}