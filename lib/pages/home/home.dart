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
  var bottomNavIndex = 0;
  final _pageController = PageController();

  List<Widget> tabs = [
    const Center(child: Text('Home`'),),
    const Center(child: Text('Analytics'),),
    const Center(child: Text('Voice'),),
    const Center(child: Text('Saved'),),
    const Center(child: Text('People'),),
  ];


/*  @override
  void initState() {
    tabs = [
       _buildHomeUi(),
      const Center(child: Text('Analytics'),),
      const Center(child: Text('Voice'),),
      const Center(child: Text('Saved'),),
      const Center(child: Text('People'),),
    ];
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: bottomNavIndex == 0 ? _buildHomeUi() : tabs[bottomNavIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
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

  Widget _buildHomeUi() {
    return Column(
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
    );
  }

  Widget _buildBottomNavigationBar() {
    final bottoms = [
      Icons.menu_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.people_outlined,
    ];
    final _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: _width,
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() {
            bottomNavIndex = index;
          }),
          child: Container(
            width: (_width - 40) / 5,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: bottomNavIndex == index
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Colors.deepOrange,
                      ),
                    ),
                  )
                : null,
            child: Icon(
              bottoms[index],
              size: 25,
              color: bottomNavIndex == index ? kColor : Colors.grey[200],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: bottoms.length,
      ),
    );
  }
}
