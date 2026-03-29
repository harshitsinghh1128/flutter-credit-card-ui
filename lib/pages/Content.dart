import 'package:flutter/material.dart';
import 'package:flutter_visa/utils/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade400,

child: Stack(
  children: [
    Positioned(
      right: -150,
      child: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.2),
      ),

    )),
Positioned(
  top: 18,
  right: 8,
          child: Transform.scale(
            scale: 0.8,
          child: SizedBox(
            height: 80,
            child: Image.asset('assets/chip.png'),
          ),
        ),
),

    Positioned(
      left: -150,
      bottom: -470,
      child: Container(
      height: 600,
      width: 600,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.2),
      ),

    )),
    Positioned(
  top: 22,
  left: 17,
  child: Transform.scale(
    scale: 1.9, 
    child: SizedBox(
      height: 30,
      child: Image.asset('assets/visa.png'),
    ),
  ),
),
Padding(padding:  EdgeInsets.only(top: 80, left: 18)),
Positioned(
  top: 60,
  left: 18,
  child: ModifiedText(text:"it's where you want to be", 
  size: 15, 
  color: Colors.grey.shade900),
  ),


  Positioned(
   bottom: 37,
   left: 15,
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
Text('5678 8944 0311 9734',style: GoogleFonts.sourceCodePro(
        fontSize:20,
        color: Colors.grey.shade800,
       fontWeight: FontWeight.bold
       
        ),),

       Text('HARSHIT SINGH',style: GoogleFonts.sourceCodePro(
        fontSize:20,
        color: Colors.grey.shade800,
       fontWeight: FontWeight.w500
       
        ),),
        
     ],
   ),
   ),
  ],
),
    );
  }
}
