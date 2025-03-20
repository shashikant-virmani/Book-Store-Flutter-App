import 'package:flutter/material.dart';

class BookModel {
  String title;
  String bookCoverPath;
  Color boxColor;

  BookModel({
    required this.title,
    required this.bookCoverPath,
    required this.boxColor,
  });

  static List<BookModel> getBooks() {
    List<BookModel> books = [];

    books.add(
      BookModel(title: 'The Devil is an Ass', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50150/pg50150.cover.medium.jpg', boxColor: Colors.lightBlueAccent),
    );

    books.add(
      BookModel(title: 'Liverpool', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50152/pg50152.cover.medium.jpg', boxColor: Colors.limeAccent),
    );

    books.add(
      BookModel(title: 'Alfred Kihlman: Elämän kuvaus. 2 (of 2)', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50142/pg50142.cover.medium.jpg', boxColor: Colors.orangeAccent),
    );

    books.add(
      BookModel(title: 'The Devil is an Ass', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50150/pg50150.cover.medium.jpg', boxColor: Colors.lightBlueAccent),
    );

    books.add(
      BookModel(title: 'Liverpool', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50152/pg50152.cover.medium.jpg', boxColor: Colors.limeAccent),
    );

    books.add(
      BookModel(title: 'Alfred Kihlman: Elämän kuvaus. 2 (of 2)', bookCoverPath: 'https://www.gutenberg.org/cache/epub/50142/pg50142.cover.medium.jpg', boxColor: Colors.orangeAccent),
    );
    return books;
  }
}