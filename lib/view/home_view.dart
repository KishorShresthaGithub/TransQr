import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({super.key});

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
          child: const Column(
            children: [
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("test")])),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("test")]))
            ],
          )),
    );
  }
}
