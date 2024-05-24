import 'package:flutter/material.dart';
import 'package:switch_animation/widgets/switch_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: SwitchAnimationWidget(),
      ),
    );
  }
}
