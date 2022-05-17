import 'package:book_app/models/book.dart';
import 'package:book_app/pages/details/details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsPage(book),
        ),
      ),
      child: Container(
        height: kIsWeb ?  (book.height as double )* 3.0 : book.height as double,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(book.imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
