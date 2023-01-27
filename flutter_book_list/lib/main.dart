import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/list_screen.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List App',
      home: ListScreen(), //홈을 ListScreen으로 설정
      );
  }
}

