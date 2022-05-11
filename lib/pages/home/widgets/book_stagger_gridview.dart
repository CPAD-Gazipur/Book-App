import 'package:book_app/models/book.dart';
import 'package:book_app/pages/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggerGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callBack;
  BookStaggerGridView(this.selected, this.pageController, this.callBack,
      {Key? key})
      : super(key: key);

  var bookList = Book.generateBook();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: [
          StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 4,
              itemCount: bookList.length,
              itemBuilder: (_,index) => BookItem(bookList[index]),
              staggeredTileBuilder: (_) => const StaggeredTile.fit(2),),
          Container(),
        ],
      ),
    );
  }
}
