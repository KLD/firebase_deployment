import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODED',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF16243e),
        textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Welcome to CODED',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 1,
          // pause: const Duration(seconds: 500),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        )
            // Text(
            //   "Welcome to CODed",
            //   style: TextStyle(color: Colors.white),
            // ),
            ),
      ),
    );
  }
}
