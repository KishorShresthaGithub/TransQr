import 'package:flutter/material.dart';

class TQButton extends StatelessWidget {
  VoidCallback onPressed;
  Widget child;

  TQButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext ctx) {
    return SizedBox(
        height: 200,
        width: 200,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                //borderRadius: BorderRadius.zero, //Rectangular border
              ),
            ),
            onPressed: onPressed,
            child: child));
  }
}
