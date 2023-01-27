import 'package:flutter/material.dart';
import 'dart:ui';

class ListScreen extends StatelessWidget{
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("도서목록앱"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('패키지없이 r로 구현하는'),
            leading: Image.network("https://images.unsplash.com/photo-1653376332215-7277dae6c6b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
          ),
          ListTile(
            title: const Text('패키지없이 r로 구현하는'),
            leading: Image.network("https://images.unsplash.com/photo-1653376332215-7277dae6c6b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
          ),
          ListTile(
            title: const Text('패키지없이 r로 구현하는'),
            leading: Image.network("https://images.unsplash.com/photo-1653376332215-7277dae6c6b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
          ),
          ListTile(
            title: const Text('패키지없이 r로 구현하는'),
            leading: Image.network("https://images.unsplash.com/photo-1653376332215-7277dae6c6b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
          ),

          BookTile(title: "tite", subtitle: "subtitle", description: "description", image: "image"),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget{
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap:(){});
  }
}