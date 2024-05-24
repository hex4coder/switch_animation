import 'package:flutter/material.dart';
import 'package:switch_animation/widgets/switch_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: SwitchAnimationWidget(
          width: 80,
          onChanged: (bool a) {
            print(a);
          },
        ),
      ),
    );
  }
}
