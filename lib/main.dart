import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confetti/confetti.dart';
import 'package:firebase_deployment/client.dart';
import 'package:flutter/material.dart';

import 'launch/app_config.dart';
import 'launch/server_main.dart';

void main() {
  launchApp(config: config);
}

void launchApp({required AppConfig config}) {
  Client.dio.options.baseUrl = config.baseUrl;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = ConfettiController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODED',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF16243e),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: ElevatedButton(
            //       onPressed: () {
            //         controller.play();
            //       },
            //       child: const Text("click")),
            // ),
            // Align(
            //     alignment: Alignment.topCenter,
            //     child: ConfettiWidget(confettiController: controller)),
            Center(
                child: FutureBuilder(
                    future: Client.dio.get("/message"),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return const CircularProgressIndicator(
                            color: Colors.white);
                      }

                      return AnimatedTextKit(
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
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
