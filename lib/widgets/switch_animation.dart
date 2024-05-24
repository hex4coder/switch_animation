import 'package:flutter/material.dart';

class SwitchAnimationWidget extends StatefulWidget {
  const SwitchAnimationWidget({super.key});

  @override
  State<SwitchAnimationWidget> createState() => _SwitchAnimationWidgetState();
}

class _SwitchAnimationWidgetState extends State<SwitchAnimationWidget> {
  // trigger
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
        value: isOn,
        onChanged: (bool? on) {
          setState(() {
            isOn = on ?? false;
          });
        });
  }
}
