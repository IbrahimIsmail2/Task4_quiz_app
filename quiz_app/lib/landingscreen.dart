import 'package:flutter/material.dart';
import 'package:quizz_app1/Splash_screen.dart';

import 'package:quizz_app1/utils/images_name.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Image.asset(home_page),
            const Text(
              'ITI Quiz App',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            const Text(
              'we are creative, enjoy your app',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SplashScreen();
                      },
                    ),
                  );
                },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  minimumSize: WidgetStateProperty.all(const Size(400, 50)),
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                child: const Text(
                  'start',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
