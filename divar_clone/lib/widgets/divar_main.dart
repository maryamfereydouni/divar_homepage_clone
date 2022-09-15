import 'package:divar_clone/widgets/divar_categories.dart';
import 'package:divar_clone/widgets/divar_chat.dart';
import 'package:divar_clone/widgets/divar_record_ads.dart';
import 'package:flutter/material.dart';
import '../models/divar_posts_model.dart';
import 'divar_ads.dart';
import 'divar_appbar.dart';
import 'divar_home_page.dart';
import 'divar_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    Scaffold(
      appBar: const DivarAppBar(),
      body: ListView.builder(
          itemCount: DivarPostsModel.items.length,
          itemBuilder: (context, index) {
            return DivarAdsPage(
              item: DivarPostsModel.items[index],
            );
          }),
    ),
    const DivarCategories(),
    const DivarRecordAds(),
    const DivarChat(),
    const MyDivar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [BoxShadow(color: Color(0xFF444343), blurRadius: 2.0)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconBottomBar(
                text: "آگهی ها",
                icon: Icons.home,
                selected: pageIndex == 0,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                }),
            IconBottomBar(
                text: "دسته ها",
                icon: Icons.format_list_bulleted,
                selected: pageIndex == 1,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                }),
            IconBottomBar(
                text: "ثبت آگهی",
                icon: Icons.add_circle,
                selected: pageIndex == 2,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                }),
            IconBottomBar(
                text: "چت",
                icon: Icons.chat,
                selected: pageIndex == 3,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                }),
            IconBottomBar(
                text: "دیوار من",
                icon: Icons.person,
                selected: pageIndex == 4,
                onPressed: () {
                  setState(() {
                    pageIndex = 4;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
