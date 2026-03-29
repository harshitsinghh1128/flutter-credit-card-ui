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
        child: Container(
          height: 250,
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(boxShadow: AppColors.shadow),
child: Content(
  
),


        ),
      ),
    );
  }
}