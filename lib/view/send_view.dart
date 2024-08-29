import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SendView extends StatefulWidget {
  const SendView({super.key});

  @override
  State<SendView> createState() => _SendViewState();
}

class _SendViewState extends State<SendView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Send'),
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).go("/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
            child: Container(height: double.infinity, child: Text("Send"))));
  }
}
