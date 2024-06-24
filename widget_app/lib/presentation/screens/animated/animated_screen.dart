import 'package:flutter/material.dart';
import "dart:math" show Random;

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

    static const name = "animated_screen";

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double bordeRadius = 10;

  void changeShape () {

    final random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 30;
    bordeRadius = random.nextInt(100) + 10;

    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1

      );

    setState(() {
      
    });
   

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated container"),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(bordeRadius)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon( Icons.play_arrow_rounded),
      ),
    );
  }
}