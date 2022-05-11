import 'package:book_app/constants/color.dart';
import 'package:book_app/pages/home/widgets/book_stagger_gridview.dart';
import 'package:book_app/pages/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomTab(
            tabIndex,
            (int index) {
              setState(() {
                tabIndex = index;
              });
              _pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: BookStaggerGridView(
              tabIndex,
              _pageController,
              (int index) {
                setState(() {
                  tabIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu_rounded,
          color: kColor,
        ),
      ),
      title: Text(
        'All Books',
        style: TextStyle(
          color: kColor,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_rounded,
            color: kColor,
          ),
        ),
      ],
    );
  }
}
