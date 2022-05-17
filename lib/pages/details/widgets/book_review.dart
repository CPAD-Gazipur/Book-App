import 'package:book_app/constants/color.dart';
import 'package:book_app/models/book.dart';
import 'package:flutter/material.dart';

class BookReview extends StatelessWidget {
  final Book book;
  const BookReview(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${book.score}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              _buildStar(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${book.rating} reviews on Google Play Store.',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 15,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: book.review,
                  style: TextStyle(
                    color: kColor,
                    fontSize: 16,
                    height: 1.8
                  ),
                ),
                const TextSpan(
                  text: '...read more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ]
            )
          ),
        ],
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> colors = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];

    return Row(
      children: colors
          .map(
            (e) => Icon(
              Icons.star,
              size: 25,
              color: e,
            ),
          )
          .toList(),
    );
  }
}
