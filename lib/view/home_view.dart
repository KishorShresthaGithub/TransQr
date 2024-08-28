import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Main extends StatelessWidget {
  Main({super.key});

  final Widget send = SvgPicture.asset(
    'lib/assets/send.svg',
  );

  final Widget scan = SvgPicture.asset(
    'lib/assets/scan.svg',
    height: 512,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR"),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(child: TextSvgButton(text: "Scan", child: scan)),
              Expanded(
                child: TextSvgButton(
                  text: "Send",
                  child: send,
                ),
              )
            ],
          )),
    );
  }
}

class TextSvgButton extends StatelessWidget {
  TextSvgButton({super.key, required this.child, required this.text});

  final Widget child;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Button(
        onPressed: () {},
        child: child,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(text)
    ]);
  }
}

class Button extends StatelessWidget {
  VoidCallback onPressed;
  Widget child;

  Button({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext ctx) {
    return Container(
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
