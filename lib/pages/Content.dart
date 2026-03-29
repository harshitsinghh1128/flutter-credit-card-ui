import 'package:flutter/material.dart';
import 'package:flutter_visa/widgets/flipcard.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width - 24;

    return FlipCard(
      front: _buildFrontCard(cardWidth),
      back: _buildBackCard(cardWidth),
    );
  }

  
  Widget _buildFrontCard(double cardWidth) {
    return Container(
      width: cardWidth,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green.shade400,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24, width: 1.2),
      ),
      child: Stack(
        children: [
          // Background circles
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.2),
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
            ),
          ),

          // Chip
          Positioned(
            top: 18,
            right: 8,
            child: Transform.scale(
              scale: 0.6,
              child: SizedBox(
                height: 80,
                child: Image.asset('assets/chip.png'),
              ),
            ),
          ),

          // Visa Logo
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

          // Tagline
          Positioned(
            top: 60,
            left: 18,
            child: Text(
              "it's where you want to be",
              style: TextStyle(color: Colors.grey.shade900),
            ),
          ),

          // Card details
          Positioned(
            bottom: 37,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5678 8944 0311 9734',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                Text(
                  'HARSHIT SINGH',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 
  Widget _buildBackCard(double cardWidth) {
    return Container(
      width: cardWidth,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24, width: 1.2),
      ),
      child: Stack(
        children: [
          // Magnetic strip
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              color: Colors.black,
            ),
          ),

          // CVV box
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Container(
              height: 40,
              color: Colors.white,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10),
              child: const Text(
                "123",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
