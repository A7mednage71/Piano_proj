import 'package:flutter/material.dart';
import 'package:piano_proj/Screens/HomeView.dart';

void main() {
  runApp(const Pianoo());
}

class Pianoo extends StatelessWidget {
  const Pianoo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
