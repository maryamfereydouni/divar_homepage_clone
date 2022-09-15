import 'package:flutter/material.dart';

class DivarRecordAds extends StatelessWidget {
  const DivarRecordAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: Center(
        child: Text(
          "صفحه ی ثبت آگهی ها",
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
