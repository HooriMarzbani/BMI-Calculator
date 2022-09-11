import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double barwidth;

  const LeftBar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 26.0,
              width: barwidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: Colors.yellow,
              ))
        ],
      ),
    );
  }
}
