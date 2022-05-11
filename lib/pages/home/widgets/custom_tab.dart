import 'package:book_app/constants/color.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callBack;

  CustomTab(this.selected, this.callBack, {Key? key}) : super(key: key);

  final tabs = ['Ebooks', 'AudioBooks'];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: _width,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () => callBack(index),
            child: Container(
              width: (_width - 40) / 2 - 10,
              decoration: BoxDecoration(
                color: selected == index ? Colors.white : Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              alignment: Alignment.center,
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: kColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: tabs.length,
      ),
    );
  }
}
