import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:transqr/components/commons/button.dart';
import 'package:transqr/router/router.dart';
import 'package:transqr/router/routes.dart';

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
    // handle scan qr pressed
    void onScanPressed() {
      GoRouter.of(context).go("/scan");
    }

    // handle send rq pressed
    void onSendPressed() {
      GoRouter.of(context).go("/send");
    }

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
              Expanded(
                  child: TextSvgButton(
                      text: "Scan", onPressed: onScanPressed, child: scan)),
              Expanded(
                child: TextSvgButton(
                    text: "Send", onPressed: onSendPressed, child: send),
              )
            ],
          )),
    );
  }
}

class TextSvgButton extends StatelessWidget {
  VoidCallback? onPressed;

  TextSvgButton(
      {super.key, required this.child, required this.text, this.onPressed});

  final Widget child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TQButton(
        onPressed: () {
          onPressed?.call();
        },
        child: child,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(text)
    ]);
  }
}
