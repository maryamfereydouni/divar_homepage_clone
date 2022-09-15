import 'package:flutter/material.dart';

class DivarCategories extends StatelessWidget {
  const DivarCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: Center(
        child: Text(
          "صفحه ی دسته بندی ها",
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
