import 'package:divar_clone/widgets/divar_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'دیوار',
        debugShowCheckedModeBanner: false,
        locale: Locale("fa"),
        home: Directionality(textDirection: TextDirection.rtl, child: Home()));
  }
}
