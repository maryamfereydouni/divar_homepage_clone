import 'package:flutter/material.dart';

class MyDivar extends StatelessWidget {
  const MyDivar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: Center(
        child: Text(
          "صفحه ی دیوار من",
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
