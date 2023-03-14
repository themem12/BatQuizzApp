 import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final cellHeight = MediaQuery.of(context).size.height / 60;
    final gridCount = (cellHeight.floor()) * 6;
    return Stack(
      children: [
        GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 6,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(gridCount, (index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: const Color.fromRGBO(48, 82, 106, 1)
                )
              ),
              height: cellHeight,
            );
          }),
        ),
        child
      ]
    );
  }
}