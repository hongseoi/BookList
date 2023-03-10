// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_book_list/TextStyles.dart';
import 'package:flutter_book_list/models/book.dart';

class DetailedScreen extends StatelessWidget {
  final Book book;

  DetailedScreen({
    required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Column(
        children: [
          Image.network(book.image),
          Padding(
            padding: EdgeInsets.all(3),
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.8, //
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        book.title,
                        style: TextStyles.dark_15,
                      ),
                    ),
                    Text(
                      book.subtitle,
                      style: TextStyles.dark_14,
                      )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  ),
              )
            ],
            ),
            Padding(
              padding: EdgeInsets.all(3),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Text('Contact', style:TextStyles.dark_15)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.save,
                      color: Colors.blue,
                    ),
                    Text('save', style:TextStyles.dark_15)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                    ),
                    Text('Route', style:TextStyles.dark_15)
                  ],
                ),                                
                

              ],),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(book.description)
              )

        ],
      ),
    );
  }
}