// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../models/divar_posts_model.dart';
import '../widgets/divar_appbar.dart';
import '../widgets/divar_body.dart';
import '../widgets/divar_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DivarAppBar(),
      body: ListView.builder(
          itemCount: DivarPostsModel.items.length,
          itemBuilder: (context, index) {
            return DivarPostLists(
              item: DivarPostsModel.items[index],
            );
          }),
      bottomNavigationBar: const DivarBottomNavigationBar(),
    );
  }
}
