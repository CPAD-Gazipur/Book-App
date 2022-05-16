import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';

class BookReview extends StatelessWidget {
  final Book book;
  const BookReview(this.book,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Book Review'),
    );
  }
}
