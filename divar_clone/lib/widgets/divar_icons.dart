import 'package:flutter/material.dart';

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28.0,
            color: selected ? const Color(0xFF922424) : const Color(0xFF504E4E),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 13,
              height: 1.2,
              color:
                  selected ? const Color(0xFF922424) : const Color(0xFF504E4E)),
        )
      ],
    );
  }
}
