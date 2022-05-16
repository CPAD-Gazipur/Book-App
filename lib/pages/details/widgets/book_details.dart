import 'package:book_app/constants/color.dart';
import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookDetails extends StatelessWidget {
  final Book book;
  const BookDetails(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.type.toUpperCase(),
            style: const TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            book.title,
            style: TextStyle(
              fontSize: 24,
              color: kColor,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Written by ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: book.publisher,
                      style: TextStyle(
                        color: kColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                DateFormat.yMMMd().format(book.date),
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
