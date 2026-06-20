import 'package:flutter/material.dart';
import 'package:hello/feature/widgets/person_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: PersonCard(),
        ),
      ),
    );
  }
}
