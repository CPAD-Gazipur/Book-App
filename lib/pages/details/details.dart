import 'package:book_app/constants/color.dart';
import 'package:book_app/models/book.dart';
import 'package:book_app/pages/details/widgets/book_cover.dart';
import 'package:book_app/pages/details/widgets/book_details.dart';
import 'package:book_app/pages/details/widgets/book_review.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Book book;
  const DetailsPage(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BookDetails(book),
          BookCover(book),
          BookReview(book),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: kColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz_outlined,
            color: kColor,
          ),
        ),
      ],
    );
  }
}
