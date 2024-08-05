import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/home_page/my_home_page.dart';
import 'package:tuntun_ui/screen/tuntun_first_page/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: FirstPage(),
      home: HomePage(),
    );
  }
}
