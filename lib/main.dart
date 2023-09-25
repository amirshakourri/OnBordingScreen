import 'package:flutter/material.dart';

import 'onBordingScreen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OnBordingScreen(),
      ),
    );
  }
}
