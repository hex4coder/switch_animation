import 'package:flutter/material.dart';

class SwitchAnimationWidget extends StatefulWidget {
  const SwitchAnimationWidget(
      {this.width = 80,
      this.showText = true,
      required this.onChanged,
      this.vertical = false,
      super.key});

  final bool showText;
  final double width;
  final void Function(bool) onChanged;
  final bool vertical;

  @override
  State<SwitchAnimationWidget> createState() => _SwitchAnimationWidgetState();
}

class _SwitchAnimationWidgetState extends State<SwitchAnimationWidget> {
  // trigger
  bool isOn = false;
  final dur = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOn = !isOn;
        });
        widget.onChanged(isOn);
      },
      child: RotatedBox(
        quarterTurns: widget.vertical ? -45 : 0,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedContainer(
              duration: dur,
              width: widget.width,
              height: widget.width / 2,
              decoration: BoxDecoration(
                color: isOn ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: widget.width / 10, vertical: widget.width / 10),
            ),
            AnimatedPositioned(
              right: isOn
                  ? (widget.width - (widget.width / 10) - (widget.width / 4))
                  : (widget.width / 10),
              duration: dur,
              child: Opacity(
                  opacity: widget.showText ? 1.0 : 0.0,
                  child: Text(isOn ? "ON" : "OFF")),
            ),
            AnimatedPositioned(
              left: isOn
                  ? (widget.width - (widget.width / 10) - widget.width / 2.5)
                  : (widget.width / 10),
              duration: dur,
              child: AnimatedContainer(
                duration: dur,
                width: widget.width / 2.5,
                height: widget.width / 2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isOn ? Colors.green.shade800 : Colors.grey.shade800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
