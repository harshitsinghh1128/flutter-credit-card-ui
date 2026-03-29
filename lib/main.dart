import 'package:flutter/material.dart';
import 'package:flutter_visa/pages/Home.dart';
import 'package:flutter_visa/utils/colors.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.bgcolor,
      ),
      home: Home(),
    );
  }
}
