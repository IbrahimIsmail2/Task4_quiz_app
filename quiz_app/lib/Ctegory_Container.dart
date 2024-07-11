import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    required this.index,
  });

  List<String> quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    "Geography test",
    "Science test",
    "Literature test",
  ];
  List<Color> quizColor = [
    Colors.green,
    Colors.white,
    Colors.green,
    Colors.white,
    Colors.green,
    Colors.white
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  YourScreen(), // Replace YourScreen() with the screen/widget you want to navigate to
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: quizColor[index],
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                fontSize: 35,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Example of a screen you might navigate to
class YourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Screen"),
      ),
      body: Center(
        child: Text("Replace this with your screen content"),
      ),
    );
  }
}
