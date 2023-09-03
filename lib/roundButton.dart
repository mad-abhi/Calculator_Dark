import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  RoundButton({
    required this.buttonText,
    required this.colorText,
    required this.onPressed,
    required this.buttonBoxShape,
    required this.buttonWidth,
    required this.colorback,
  });

  final String buttonText;
  final Color colorText;
  final void Function() onPressed;
  final buttonBoxShape;
  final double buttonWidth;
  final Color colorback;

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        depth: 6,
        shadowDarkColor: Color(0xFF906005),
        lightSource: LightSource.topRight,
        boxShape: widget.buttonBoxShape,
        color: widget.colorback,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 40,
              fontFamily: "IndieFlower",
            ),
          ),
        ),
      ),
    );
  }
}
