import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanView extends StatefulWidget {
  const ScanView({super.key});

  @override
  State<ScanView> createState() => _ScanViewState();
}

class _ScanViewState extends State<ScanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scan'),
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).go("/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
            child: Container(height: double.infinity, child: Text("Scan"))));
  }
}
