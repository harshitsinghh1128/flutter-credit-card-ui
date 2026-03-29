import 'package:flutter/material.dart';
import 'package:flutter_visa/pages/Content.dart';
import 'package:flutter_visa/utils/colors.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Center(
        child: Content(),
      ),
    );
  }
}
