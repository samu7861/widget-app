// ignore_for_file: unnecessary_const, unused_element

import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = "progress";

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProgressView();
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("progress indicator"),
      ),
      body: const Center(
        child: const Column(
          children: [
            SizedBox(height: 30,),
            Text("Circular progress"),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              strokeWidth: 2, backgroundColor: Colors.white38,
              ),
            SizedBox(height: 30,),
            Text("circular progress controlled"),
            _ControlledProgressIndicator()
           
          ],
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(const Duration( milliseconds: 300), (value){
        return (value*2)/100;
      }). takeWhile((value) => value<100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.white38,
                value: progressValue,
              ),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(
                value: progressValue,
              ))
            ],
          ),
          );
      }
    );
  }
}